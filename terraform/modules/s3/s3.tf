locals {
  bucket_name = "${var.name}-${var.environment}"
}

# Criação do Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name
  tags = {
    Name        = local.bucket_name
    Environment = var.environment
  }
}

# Adicionando Permissão ao Bucket
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = jsonencode({
    "Version": "2012-10-17",
    "Id": "LiberacaoDextraS3",
    "Statement": [
      {
        "Sid": "LiberacaoDextraS3",
        "Effect": "Allow",
        "Principal": {
          "AWS": "*"
        },
        "Action": [
          "s3:GetObject*",
          "s3:GetBucket*",
          "s3:DeleteObject*",
          "s3:PutObject*",
          "s3:RestoreObject*",
          "s3:ListBucket"
        ],
        "Resource": [
          "*",
        ]
      }
    ]
  })
}
