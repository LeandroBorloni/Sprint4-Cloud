provider "aws" {
  region = "us-east-1" 
}

resource "aws_s3_bucket" "produto_images" {
  bucket = "challenge-bosch-2024"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_db_instance" "produto_database" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "13"
  instance_class       = "db.t3.micro"
  name                 = "produtosdb"
  username             = "admin"
  password             = var.db_password
  publicly_accessible  = false
  skip_final_snapshot  = true
}
