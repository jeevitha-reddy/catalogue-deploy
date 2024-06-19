terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "devrobo-state-dev"
    key = "catalogue-deploy"  # your wish
    region = "us-east-1"
    dynamodb_table = "devrobo-locking-dev"
  } 
}



provider "aws" {
  region = "us-east-1"
}