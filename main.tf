### S3 Bucket placed behind CloudFront
variable "bucket_name" {}
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "public"

  versioning {
    enabled = true
  }

  tags = {
    Name = var.bucket_name
  }
}
