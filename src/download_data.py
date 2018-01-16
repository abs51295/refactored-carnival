import boto3
import botocore
import os

session = boto3.session.Session(aws_access_key_id=os.environ.get('AWS_S3_ACCESS_KEY', ''),
                                             aws_secret_access_key=os.environ.get('AWS_S3_SECRET_KEY', ''))
s3 = session.resource('s3', config=botocore.client.Config(
            signature_version='s3v4'), region_name='us-east-2')

bucket = s3.Bucket(os.environ.get("AWS_S3_BUCKET_NAME", ""))

bucket.download_file(os.environ.get("AWS_S3_FILE_PATH", ""), os.environ.get("LOCAL_FILE_PATH", ""))

