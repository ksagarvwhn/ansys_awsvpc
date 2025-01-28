terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket         = "sagar-terraform-state-bucket"
    key            = "sagar/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "sagar-lock-table"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
