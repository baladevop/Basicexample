#terraform {
#  required_version = ">= 0.12"
#}

#provider "aws" {
#  region = var.region
#}

provider "aws" {
  region = var.region
  access_key = "AKIAVP7XDXS4TADR2ZMJ"
  secret_key = "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"
}

resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}

resource "aws_sqs_queue" "user_updates_queue" {
  name = "user-updates-queue"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.user_updates.arn
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.user_updates_queue.arn
}
