resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = data.aws_s3_bucket.selected-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}