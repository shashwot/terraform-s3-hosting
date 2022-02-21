resource "aws_s3_bucket_cors_configuration" "example" {
  bucket = data.aws_s3_bucket.selected-bucket.bucket

  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://www.${var.domain_name}"]
    max_age_seconds = 3000
  }
}