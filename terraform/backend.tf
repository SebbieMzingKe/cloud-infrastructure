terraform {
  backend "s3" {
    bucket = "cloud-infra-seb"
    key = "terraform.tfstate"
    region = "us-west-2"
  }
}