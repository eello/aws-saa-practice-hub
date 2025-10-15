import json
import logging
import re
from string import ascii_uppercase
from typing import Any, Dict, List, Optional

import boto3
import pymysql

ssm = boto3.client("ssm")

logger = logging.getLogger()
logger.setLevel(logging.INFO)


def get_param(name: str) -> str:
    return ssm.get_parameter(Name=name, WithDecryption=True)["Parameter"]["Value"]


RESPONSE_HEADERS = {
    "Content-Type": "application/json",
    "Access-Control-Allow-Origin": "*",
}


def extract_question_id(event: Dict[str, Any]) -> Optional[int]:
    if not event:
        return None

    candidate_keys = ("question_id", "id")

    for key in candidate_keys:
        if key in event and event[key] is not None:
            return safe_int(event[key])

    if "queryStringParameters" in event and event["queryStringParameters"]:
        params = event["queryStringParameters"]
        for key in candidate_keys:
            if key in params and params[key] is not None:
                return safe_int(params[key])

    if "pathParameters" in event and event["pathParameters"]:
        params = event["pathParameters"]
        for key in candidate_keys:
            if key in params and params[key] is not None:
                return safe_int(params[key])

    body = event.get("body")
    if body:
        try:
            payload = json.loads(body)
            if isinstance(payload, dict):
                for key in candidate_keys:
                    if key in payload and payload[key] is not None:
                        return safe_int(payload[key])
        except json.JSONDecodeError:
            return None

    return None


def safe_int(value: Any) -> Optional[int]:
    try:
        return int(value)
    except (TypeError, ValueError):
        return None


def normalise_wikilinks(text: str) -> str:
    pattern = re.compile(r"\[\[(?:[^\]|]*\|)?([^\]]+)\]\]")
    return pattern.sub(r"\1", text)


def generate_choice_label(index: int) -> str:
    base = len(ascii_uppercase)
    label_chars: List[str] = []

    while True:
        index, remainder = divmod(index, base)
        label_chars.append(ascii_uppercase[remainder])
        if index == 0:
            break
        index -= 1

    return "".join(reversed(label_chars))


def build_response(
    question_row: Dict[str, Any],
    choice_rows: List[Dict[str, Any]],
    answer_rows: List[Dict[str, Any]],
    description_row: Optional[Dict[str, Any]],
    total_question_count: int,
) -> Dict[str, Any]:
    answer_id_set = {row["choice_id"] for row in answer_rows}
    choices_payload = []
    answer_choice_ids: List[int] = []
    answer_labels: List[str] = []

    sorted_choices = sorted(choice_rows, key=lambda c: c["id"])

    for idx, choice in enumerate(sorted_choices):
        label = generate_choice_label(idx)
        is_correct = choice["id"] in answer_id_set
        if is_correct:
            answer_choice_ids.append(choice["id"])
            answer_labels.append(label)
        choices_payload.append(
            {
                "id": choice["id"],
                "label": label,
                "text": {
                    "kr": choice.get("text_kr", ""),
                    "en": choice.get("text_en", ""),
                },
                "is_correct": is_correct,
            }
        )

    explanation = ""
    if description_row and description_row.get("text"):
        raw_description = description_row["text"].replace("\r", "").strip()
        explanation = normalise_wikilinks(raw_description)

    return {
        "id": question_row["id"],
        "question": {
            "kr": question_row.get("text_kr", ""),
            "en": question_row.get("text_en", ""),
        },
        "choices": choices_payload,
        "answer": {
            "choice_ids": answer_choice_ids,
            "labels": answer_labels,
        },
        "explanation": explanation,
        "total_question_count": total_question_count,
    }


def lambda_handler(event, context):
    question_id = extract_question_id(event or {})
    if question_id is None:
        return {
            "statusCode": 400,
            "headers": RESPONSE_HEADERS,
            "body": json.dumps({"message": "question_id is required"}),
        }

    db_host = get_param("/rds/db_host")
    db_user = get_param("/rds/db_user")
    db_password = get_param("/rds/db_password")
    db_name = get_param("/rds/db_name")
    logger.info("Connecting to %s as %s", db_host, db_user)

    try:
        connection = pymysql.connect(
            host=db_host,
            user=db_user,
            password=db_password,
            database=db_name,
            connect_timeout=5,
            cursorclass=pymysql.cursors.DictCursor,
        )

        logger.info("Connected to database")
    except Exception as exc:
        return {
            "statusCode": 500,
            "headers": RESPONSE_HEADERS,
            "body": json.dumps(
                {"message": "Failed to connect to database", "detail": str(exc)}
            ),
        }

    try:
        with connection:
            with connection.cursor() as cursor:
                cursor.execute(
                    "SELECT id, text_kr, text_en FROM question WHERE id = %s",
                    (question_id,),
                )
                question_row = cursor.fetchone()
                if not question_row:
                    return {
                        "statusCode": 404,
                        "headers": RESPONSE_HEADERS,
                        "body": json.dumps(
                            {"message": f"Question {question_id} not found"}
                        ),
                    }

                cursor.execute(
                    "SELECT id, text_kr, text_en FROM choice WHERE question_id = %s ORDER BY id",
                    (question_id,),
                )
                choice_rows = cursor.fetchall()

                cursor.execute(
                    "SELECT choice_id FROM answer WHERE question_id = %s ORDER BY id",
                    (question_id,),
                )
                answer_rows = cursor.fetchall()

                cursor.execute(
                    "SELECT text FROM description WHERE question_id = %s ORDER BY id LIMIT 1",
                    (question_id,),
                )
                description_row = cursor.fetchone()

                cursor.execute("SELECT MAX(id) AS max_question_id FROM question")
                total_question_count_row = cursor.fetchone()
                total_question_count = (
                    total_question_count_row["max_question_id"]
                    if total_question_count_row
                    and total_question_count_row["max_question_id"] is not None
                    else 0
                )

        payload = build_response(
            question_row,
            choice_rows,
            answer_rows,
            description_row,
            total_question_count,
        )
        return {
            "statusCode": 200,
            "headers": RESPONSE_HEADERS,
            "body": json.dumps(payload, ensure_ascii=False),
        }
    except Exception as exc:
        return {
            "statusCode": 500,
            "headers": RESPONSE_HEADERS,
            "body": json.dumps({"message": "Unhandled error", "detail": str(exc)}),
        }
