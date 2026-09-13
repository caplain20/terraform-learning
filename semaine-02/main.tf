terraform {
  required_providers {
    aws = {
      source   = "hashicorp/aws"
      version  = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "mon_serveur" {
  ami           = "ami-09874b6f514e9dbd7"  
  instance_type = var.instance_type

  tags = {
    Name = "terraform-lab-02"
  }
}
