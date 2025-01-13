terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/terraform.tfstate"
    region = "eu-north-1"
  }
}