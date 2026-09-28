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

resource "aws_s3_bucket" "buckets" {
  for_each = toset(["logs", "backup", "archives"])
  bucket   = "terraform-lab04-${each.key}-caplainm"

  lifecycle {
    prevent_destroy = false
  }
}
