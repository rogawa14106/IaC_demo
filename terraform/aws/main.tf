terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  // ami           = "ami-0f75d1a8c9141bd00" //amazon machine image - amazon linux
  ami           = "ami-0cab37bd176bb80d3" //ubuntu
  instance_type = "t2.micro"

  tags = {
    Name = var.instans_name
  }
}
