resource "aws_sns_topic" "alerts" {
  name = "ec2-high-cpu-alerts"
}

resource "aws_sns_topic_subscription" "email_alert" {
  topic_arn = aws_sns_topic.alerts.arn
  protocol  = "email"
  endpoint  = "example@email.com"
}
