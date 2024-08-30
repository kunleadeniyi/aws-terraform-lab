terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "lab-terraform-back-end"
    region = "eu-west-2"
    key = "key/terraform.tfstate"
  }
}