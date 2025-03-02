terraform {
  backend "s3" {
    bucket = "mybucketbackenedbucketdemo1"
    key    = "path/terraform.tfstate"
    region = "us-east-1"
  }
}
