terraform {
  backend "s3" {
    bucket = "hari-terraform"
    key    = "staging/terraform.tfstate"
    region = "us-east-1"
  }
}
