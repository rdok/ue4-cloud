terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

resource "aws_vpc" "ue4" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.name
  }
}

resource "aws_instance" "micro" {
  ami           = "ami-00890f614e48ce866"
  instance_type = "t2.micro"
  tags = {
    Name = var.name
  }
}
