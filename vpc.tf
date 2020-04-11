resource "aws_vpc" "ue4" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.name
  }
}

