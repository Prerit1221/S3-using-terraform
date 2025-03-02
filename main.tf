terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
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

resource "aws_instance" "my_instance" {
  ami                    = "ami-075449515af5df0d1" # Amazon Linux 2 AMI for eu-north-1
  instance_type          = "t3.micro"

  tags = {
    Name = "ec2_temp"
    Environment = "test"
  }
}

resource "aws_instance" "my_instance1" {
  ami                    = "ami-075449515af5df0d1" # Amazon Linux 2 AMI for eu-north-1
  instance_type          = "t3.micro"

  tags = {
    Name = "ec2_main"
    Environment = "hello21"
  }
}
