terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}

resource "aws_s3_bucket" "bucket_logs" {
  bucket = "terraform-lab03-logs-caplainm"
}

resource "aws_s3_bucket" "bucket_archives" {
  bucket = "terraform-lab03-backup-caplainm"
}
