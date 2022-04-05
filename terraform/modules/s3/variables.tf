variable "name" {
  type        = string
  description = "Nome do bucket."
}

variable "environment" {
  type        = string
  description = "Nome do ambiente do bucket."
}

variable "bucket_cleanup" {
  type        = string
  description = "ARN da conta que terá acesso ao bucket."
}
