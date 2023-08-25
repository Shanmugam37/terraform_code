terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA4O6GR764RARPUVZJ"
  secret_key = "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"
}