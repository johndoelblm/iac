
provider "aws" {
  #profile = var.profile
  region  = "ap-southeast-1"
}

terraform {
  backend "s3" {}
}
