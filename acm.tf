resource "aws_acm_certificate" "default" {
  domain_name       = "thanvi.tech"
  validation_method = "DNS"

  tags = {
    Environment = "test"
  }

  lifecycle {
    create_before_destroy = true
  }
}