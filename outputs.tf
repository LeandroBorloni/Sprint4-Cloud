output "bucket_name" {
  value = aws_s3_bucket.produto_images.bucket
}

output "db_endpoint" {
  value = aws_db_instance.produto_database.endpoint
}
