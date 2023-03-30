## This block contains Terraform settings to init
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

## This block configures the specified AWS provider keys access
provider "aws" {
  access_key      = var.access_key
  secret_key      = var.secret_key
  region          = var.aws_zone["ireland"]
}