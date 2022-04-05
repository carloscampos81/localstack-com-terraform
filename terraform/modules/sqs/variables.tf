variable "name" {
  type        = string
  description = "Nome da fila SQS."
}

variable "environment" {
  type        = string
  description = "Nome do ambiente da fila SQS."
}

variable "visibility_timeout" {
  type        = number
  description = "Timeout de visibilidade padrão da mensagem"
}
