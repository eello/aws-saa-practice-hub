import json
import logging
import os
from typing import Dict, List, Sequence, Tuple

import boto3
import pymysql
from pymysql.cursors import Cursor
from question_parser import ParseError, Question, parse_markdown_text

s3 = boto3.client("s3")
ssm = boto3.client("ssm")
sns = boto3.client("sns")

logger = logging.getLogger()
logger.setLevel(logging.INFO)

SAVE_RESULT_SNS_TOPIC_ARN = os.environ["SAVE_RESULT_SNS_TOPIC_ARN"]


def get_param(name: str) -> str:
    return ssm.get_parameter(Name=name, WithDecryption=True)["Parameter"]["Value"]


def _load_markdown_from_s3(bucket: str, key: str) -> str:
    obj = s3.get_object(Bucket=bucket, Key=key)
    return obj["Body"].read().decode("utf-8", errors="ignore")


def _persist_questions(
    cursor: Cursor,
    questions: Sequence[Question],
    next_choice_id: int,
) -> Tuple[int, Dict[str, int]]:
    counts = {"questions": 0, "choices": 0, "answers": 0}

    for question in questions:
        qid = question.qid
        cursor.execute("DELETE FROM answer WHERE question_id = %s", (qid,))
        cursor.execute("DELETE FROM description WHERE question_id = %s", (qid,))
        cursor.execute("DELETE FROM choice WHERE question_id = %s", (qid,))
        cursor.execute("DELETE FROM question WHERE id = %s", (qid,))

        cursor.execute(
            "INSERT INTO question (id, text_kr, text_en) VALUES (%s, %s, %s)",
            (qid, question.question_kr, question.question_en),
        )
        counts["questions"] += 1

        choice_map: Dict[str, int] = {}
        for choice in question.choices:
            cid = next_choice_id
            next_choice_id += 1
            choice_map[choice.label] = cid
            cursor.execute(
                "INSERT INTO choice (id, question_id, text_kr, text_en) VALUES (%s, %s, %s, %s)",
                (cid, qid, choice.text_kr, choice.text_en),
            )
            counts["choices"] += 1

        cursor.execute(
            "INSERT INTO description (question_id, text) VALUES (%s, %s)",
            (qid, question.explanation),
        )

        for label in question.answers:
            choice_id = choice_map[label]
            cursor.execute(
                "INSERT INTO answer (question_id, choice_id) VALUES (%s, %s)",
                (qid, choice_id),
            )
            counts["answers"] += 1

    return next_choice_id, counts


def lambda_handler(event, context):
    logger.info("--- Start Processing ---")
    payloads: List[Tuple[str, str, str]] = []

    for record in event.get("Records", []):
        body = json.loads(record.get("body", "{}"))
        detail = body.get("detail", {})
        bucket_name = detail.get("bucket", {}).get("name")
        object_key = detail.get("object", {}).get("key")

        if not bucket_name or not object_key:
            logger.warning("Skipping record with missing bucket or key: %s", record)
            continue

        logger.info("Processing S3 object s3://%s/%s", bucket_name, object_key)
        file_content = _load_markdown_from_s3(bucket_name, object_key)
        payloads.append((bucket_name, object_key, file_content))

    if not payloads:
        logger.info("No valid S3 objects found in event; nothing to do.")
        return {"statusCode": 200, "body": json.dumps({"message": "no-op"})}

    db_host = get_param("/rds/db_host")
    db_user = get_param("/rds/db_user")
    db_password = get_param("/rds/db_password")
    db_name = get_param("/rds/db_name")
    logger.info("Connecting to %s as %s", db_host, db_user)

    connection = None
    sns_message = ""
    sns_subject = "Quiz Save Result"

    def _format_object_name(key: str) -> str:
        base = os.path.splitext(os.path.basename(key))[0]
        token = base.split()[-1] if " " in base else base
        return token.replace("_", "-")

    object_names = ", ".join(_format_object_name(key) for _, key, _ in payloads)

    try:
        connection = pymysql.connect(
            host=db_host,
            user=db_user,
            password=db_password,
            database=db_name,
            connect_timeout=5,
            autocommit=False,
        )
        logger.info("Database connection established")

        with connection.cursor() as cursor:
            cursor.execute("SELECT COALESCE(MAX(id), 0) FROM choice")
            max_choice_id = cursor.fetchone()[0] or 0
            next_choice_id = max_choice_id + 1

            total_counts = {"questions": 0, "choices": 0, "answers": 0}

            for bucket, key, file_content in payloads:
                try:
                    questions = parse_markdown_text(file_content)
                except ParseError as exc:
                    logger.error("Failed to parse %s/%s: %s", bucket, key, exc)
                    raise

                logger.info(
                    "Parsed %d questions from %s/%s", len(questions), bucket, key
                )

                next_choice_id, counts = _persist_questions(
                    cursor, questions, next_choice_id
                )
                for metric, value in counts.items():
                    total_counts[metric] += value

                logger.info(
                    "Persisted %d questions, %d choices, %d answers from %s/%s",
                    counts["questions"],
                    counts["choices"],
                    counts["answers"],
                    bucket,
                    key,
                )

            connection.commit()

        logger.info(
            "Inserted %d questions, %d choices, %d answers",
            total_counts["questions"],
            total_counts["choices"],
            total_counts["answers"],
        )

        sns_subject = "✅ Quiz Save Success"
        sns_message = (
            f"{object_names} 문제 저장\n"
            f"quiz: {total_counts['questions']}, choice: {total_counts['choices']}"
        )

        return {
            "statusCode": 200,
            "body": json.dumps(
                {
                    "questions": total_counts["questions"],
                    "choices": total_counts["choices"],
                    "answers": total_counts["answers"],
                }
            ),
        }

    except Exception as exc:
        if connection is not None:
            connection.rollback()
        logger.exception("Failed to process markdown payloads: %s", exc)
        sns_subject = "❌ Quiz Save Failed"
        sns_message = f"{object_names} 파일 저장에 실패했습니다.\n\n{exc}"
        return {"statusCode": 500, "body": json.dumps({"error": str(exc)})}

    finally:
        if connection is not None:
            connection.close()
            logger.info("Database connection closed")

        if sns_message:
            sns.publish(
                TopicArn=SAVE_RESULT_SNS_TOPIC_ARN,
                Subject=sns_subject,
                Message=sns_message,
            )
