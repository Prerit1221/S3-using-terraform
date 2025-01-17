terraform {
  backend "s3" {
    bucket = "mybucket_backened_bucket_demo"
    key    = "path/terraform.tfstate"
    region = "eu-north-1"
  }
}
