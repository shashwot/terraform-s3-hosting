resource "aws_s3_bucket_policy" "bucket-policy" {
  bucket = data.aws_s3_bucket.selected-bucket.id
  policy = data.aws_iam_policy_document.iam-policy-1.json
}

data "aws_iam_policy_document" "iam-policy-1" {
  statement {
    sid    = "AllowPublicRead"
    effect = "Allow"

    resources = [
      "arn:aws:s3:::www.${var.domain_name}",
      "arn:aws:s3:::www.${var.domain_name}/*",
    ]

    actions = ["S3:GetObject"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}
