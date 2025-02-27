terraform {
  required_version = "=1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "eks-task-submit"
    key = "eks-task"
    acl = "bucket-owner-full-control"
    region = "us-east-1"
  }
}


provider "aws" {
  region = "us-east-1"
}