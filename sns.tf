resource "aws_sns_topic" "saw_sns_topic" {
  name = "Saw-LambdaInvocationsAlarm"
}

resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.saw_sns_topic.arn
  protocol  = "email"
  endpoint  = "saw.gweaw@gmail.com" // Replace with your email
}
