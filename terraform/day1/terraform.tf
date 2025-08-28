terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.10.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }

  required_version = ">= 1.2"
}

provider "aws" {
  region = var.aws_region
}
