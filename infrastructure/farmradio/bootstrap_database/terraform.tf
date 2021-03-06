terraform {
  backend "s3" {
    bucket  = "infrastructure.farmradio.org"
    key     = "bootstrap_database.tfstate"
    encrypt = true
    region  = "eu-west-1"
  }

  required_version = ">= 0.12"
}

data "terraform_remote_state" "somleng" {
  backend = "s3"

  config = {
    bucket = "infrastructure.farmradio.org"
    key    = "somleng.tfstate"
    region = var.aws_region
  }
}

provider "aws" {
  region  = var.aws_region
}
