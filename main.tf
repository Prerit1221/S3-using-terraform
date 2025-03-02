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

resource "aws_s3_bucket" "firstbuckettttfffggg111" {
    bucket = "my-first-bucket-using-terraformmmmmmmm1116969"

  tags = {
    Name        = "My S3"
    Environment = "Dev"
  }
lifecycle {
    prevent_destroy = true
  }
  
}

resource "aws_instance" "my_instanceeeee111" {
  ami                    = "ami-075449515af5df0d1" # Amazon Linux 2 AMI for eu-north-1
  instance_type          = "t3.micro"

  tags = {
    Name = "ec2_temp1111"
    Environment = "test"
  }
}

resource "aws_instance" "my_instance11111444" {
  ami                    = "ami-075449515af5df0d1" # Amazon Linux 2 AMI for eu-north-1
  instance_type          = "t3.micro"

  tags = {
    Name = "ec2_main6969"
    Environment = "hello21"
  }
}
