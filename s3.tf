resource "aws_s3_bucket" "create-s3-bucket" {
    bucket = "s3usd2devbucket"
    acl = "private"
}