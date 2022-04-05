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
    { name = "carteira-origem", bucket_cleanup = false },
    { name = "carteira-prediagnostico", bucket_cleanup = false },
    { name = "carteira-retorno", bucket_cleanup = false },
    { name = "carteira-origem-stg", bucket_cleanup = true },
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
    { name = "carteira-sqs-fluxo-confirmadas", visibility_timeout = 3600 },
    { name = "carteira-sqs-fluxo-enviadas", visibility_timeout = 3600 },
    { name = "carteira-sqs-fluxo-retorno", visibility_timeout = 3600 }
  ]
  description = "Nome das filas SQS."
}
