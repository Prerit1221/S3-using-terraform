terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "firstbucket" {
    bucket = "my-first-bucket-using-terraform"

  tags = {
    Name        = "My S3"
    Environment = "Dev"
  }
lifecycle {
    prevent_destroy = true
  }
  
}
