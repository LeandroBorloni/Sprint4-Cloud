# Define a região onde os recursos serão criados
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Nome do bucket S3
variable "s3_bucket_name" {
  description = "Nome para o bucket S3 de armazenamento de imagens"
  type        = string
  default     = "challenge-bosch-2024"
}

# Configurações do banco de dados RDS
variable "db_instance_class" {
  description = "Classe de instância para o banco de dados RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "db_engine_version" {
  description = "Versão do mecanismo do banco de dados RDS"
  type        = string
  default     = "13"  # para PostgreSQL 13
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "produtosdb"
}

variable "db_username" {
  description = "Nome de usuário para o banco de dados RDS"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Senha para o banco de dados RDS"
  type        = string
  sensitive   = true
}

variable "db_allocated_storage" {
  description = "Espaço de armazenamento alocado para o RDS em GB"
  type        = number
  default     = 20
}
