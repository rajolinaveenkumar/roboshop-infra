terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket         = "rnk-s3-bucket"
    key            = "roboshop-cdn"
    region         = "us-east-1"
    dynamodb_table = "rnk-s3-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

