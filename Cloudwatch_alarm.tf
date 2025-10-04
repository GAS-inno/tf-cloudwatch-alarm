 resource "aws_cloudwatch_metric_alarm" "lambda_invocations_alarm" {
  alarm_name                = aws_sns_topic.saw_sns_topic.name # "saw-LambdaInvocationsAlarm"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = 1
  metric_name               = "Invocations"
  namespace                 = "AWS/ApiGateway"
  period                    = 60
  statistic                 = "Average"
  threshold                 = 1
  alarm_description         = "This alarm monitors HTTP API latency"
  insufficient_data_actions  = []
  
  dimensions = {
    ApiName =  aws_apigatewayv2_api.http_api.name
  }

  alarm_actions = [
    aws_sns_topic.saw_sns_topic.arn,
  ]
} 
