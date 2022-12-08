# Terraform and AWS setup

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.13"
    }
  }

  required_version = ">= 1.1.9"
}

provider "aws"{
  #   profile = "default"
  region = "ap-south-1"
  access_key = "AKIA4TNNQP2QAHMSVLME"
  secret_key = "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"
}
