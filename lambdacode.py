import boto3
from botocore.exceptions import ClientError
  
def lambda_handler(event, context):
    sender_email_address = 'mohab.mohamed.hasan@gmail.com'
  
    receiver_email_address = 'mohab5897@gmail.com'
  
    aws_region_name = "aws region"
  
    email_subject = "Subject name"
  
    html_body = ("<html>"
        "<body>"
        "<p>Dear Admin,</p>"
        "<br>"
        "<p>New Object Added in the bucket.</p>"
        "</body>"
        "</html>")
  
    charset = "UTF-8"
  
    ses_resource = boto3.client('ses', region_name = aws_region_name)
  
    try:
        response = ses_resource.send_email(
                Destination = {
                    'ToAddresses': [
                        receiver_email_address,
                    ],
                },
                Message = {
                    'Body': {
                        'Html': {
                            'Charset': charset,
                            'Data': html_body,
                        },
                    },
                    'Subject': {
                        'Charset': charset,
                        'Data': email_subject,
                    },
                },
                Source = sender_email_address,
            )
  
    except ClientError as e:
        print("Email Delivery Failed! ", e.response['Error']['Message'])
    else:
        print("Email successfully sent to " + receiver_email_address + "!")