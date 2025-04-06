terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.93.0"
    }
  }

  backend "s3" {
    bucket = "terraformpractice-remote-state"
    key    = "expense-backend-infra" # you should have unique keys with in 
    #       the bucket same key should not be in other repos or other terraform porjects
    # The region where the S3 bucket is located
    region = "us-east-1"
    dynamodb_table = "82s-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}