terraform {
  backend "s3" {
    bucket = "mybucketbackenedbucketdemo"
    key    = "path/terraform.tfstate"
    region = "eu-north-1"
  }
}
