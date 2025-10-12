import json
import os
import urllib.request


def lambda_handler(event, context):
    webhook_url = os.environ["DISCORD_WEBHOOK_URL"]

    for record in event["Records"]:
        sns_subject = record["Sns"]["Subject"]
        sns_message = record["Sns"]["Message"]

        payload = {"content": f"{sns_subject}\n{sns_message}"}

        data = json.dumps(payload).encode("utf-8")

        headers = {
            "Content-Type": "application/json",
            "User-Agent": "AWSLambdaDiscordBot/1.0 (+https://aws.amazon.com/lambda/)",
        }

        req = urllib.request.Request(webhook_url, data=data, headers=headers)

        try:
            with urllib.request.urlopen(req) as res:
                print(f"✅ Discord 응답: {res.status}")
        except Exception as e:
            print(f"❌ Discord 전송 실패: {e}")
