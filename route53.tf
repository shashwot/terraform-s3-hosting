resource "aws_route53_zone" "main" {
  name = var.domain_name
  tags = {
    Name = "www.${var.domain_name}"
    description = var.domain_name
  }
  comment = var.domain_name
}

resource "aws_route53_record" "www-a" {
  zone_id = aws_route53_zone.main.zone_id
  name = "www.${var.domain_name}"
  type = "A"

  alias {
    name = data.aws_s3_bucket.selected-bucket.website_domain
    zone_id = data.aws_s3_bucket.selected-bucket.hosted_zone_id
    evaluate_target_health = false
  }
}
