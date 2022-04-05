locals {
  queue_name = "${var.name}-${var.environment}"
  dlq_name   = "${var.name}-dlq-${var.environment}"
}

# Criação da Queue Standard
resource "aws_sqs_queue" "queue_std" {
  name                        = local.queue_name
  fifo_queue                  = false
  content_based_deduplication = false
  delay_seconds               = 5
  max_message_size            = 2048
  message_retention_seconds   = 1209600
  receive_wait_time_seconds   = 10
  visibility_timeout_seconds  = 3600
  redrive_policy              = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.dlq_std.arn}\",\"maxReceiveCount\":4}"
  tags = {
    Name        = local.queue_name
    Environment = var.environment
  }
}

# Criação da DLQ Standard
resource "aws_sqs_queue" "dlq_std" {
  name                        = local.dlq_name
  fifo_queue                  = false
  content_based_deduplication = false
  delay_seconds               = 5
  max_message_size            = 2048
  message_retention_seconds   = 1209600
  receive_wait_time_seconds   = 10
  tags = {
    Name        = local.dlq_name
    Environment = var.environment
  }
}

# Adicionando Permissão à Queue Standard
resource "aws_sqs_queue_policy" "queue_std_policy" {
  queue_url = aws_sqs_queue.queue_std.id
  policy    = jsonencode({
    "Version": "2008-10-17",
    "Id": "__default_policy_ID",
    "Statement": [
      {
        "Sid": "__sender_statement",
        "Effect": "Allow",
        "Principal": {
          "AWS": "*"
        },
        "Action": "SQS:SendMessage",
        "Resource": "*"
      },
      {
        "Sid": "__receiver_statement",
        "Effect": "Allow",
        "Principal": {
          "AWS": "*"
        },
        "Action": [
          "SQS:ChangeMessageVisibility",
          "SQS:DeleteMessage",
          "SQS:ReceiveMessage",
          "SQS:GetQueueUrl",
          "SQS:GetQueueAttributes"
        ],
        "Resource": "*"
      }
    ]
  })
}

# Adicionando Permissão à DLQ Standard
resource "aws_sqs_queue_policy" "dlq_std_policy" {
  queue_url = aws_sqs_queue.dlq_std.id
  policy    = jsonencode({
    "Version": "2008-10-17",
    "Id": "__default_policy_ID",
    "Statement": [
      {
        "Sid": "__sender_statement",
        "Effect": "Allow",
        "Principal": {
          "AWS": "*"
        },
        "Action": "SQS:SendMessage",
        "Resource": "*"
      },
      {
        "Sid": "__receiver_statement",
        "Effect": "Allow",
        "Principal": {
          "AWS": "*"
        },
        "Action": [
          "SQS:ChangeMessageVisibility",
          "SQS:DeleteMessage",
          "SQS:ReceiveMessage",
          "SQS:GetQueueUrl",
          "SQS:GetQueueAttributes"
        ],
        "Resource": "*"
      }
    ]
  })
}

