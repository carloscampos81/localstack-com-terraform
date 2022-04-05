# Declaração de variáveis

## Variáveis globais
variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Região AWS padrão."
}

variable "s3_bucket_names" {
  type = list(any)
  default = [
    { name = "mybucket-1", bucket_cleanup = false },
    { name = "mybucket-2", bucket_cleanup = false },
    { name = "mybucket-3", bucket_cleanup = false },
    { name = "mybucket-4", bucket_cleanup = true },
  ]
  description = "Nome dos buckets S3."
}

variable "bucket_cleanup" {
  type        = bool
  default     = false
  description = "Se valor for True, é criado a politica de limpeza para os buckets"
}


variable "sqs_queue_names" {
  type = list(any)
  default = [
    { name = "my-queue-1", visibility_timeout = 3600 },
    { name = "my-queue-2", visibility_timeout = 3600 },
    { name = "my-queue-3", visibility_timeout = 3600 }
  ]
  description = "Nome das filas SQS."
}
