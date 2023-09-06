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
  access_key = "AKIASNXDJG5CWAQZY565"
  secret_key = "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"
}
