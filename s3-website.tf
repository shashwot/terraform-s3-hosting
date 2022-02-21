resource "aws_s3_bucket_website_configuration" "website-config" {
  bucket = data.aws_s3_bucket.selected-bucket.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "404.jpeg"
  }

  # IF you want to use the routing rule

  routing_rule {
    condition {
      key_prefix_equals = "/abc"
    }
    redirect {
      replace_key_prefix_with = "comming-soon.jpeg"
    }
  }

}