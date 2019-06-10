provider "aws" {
  region  = "eu-west-1"
  profile = "PowerUserAccess"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bfffucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}