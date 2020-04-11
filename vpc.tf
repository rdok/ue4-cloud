resource "aws_vpc" "ue4" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "ue4" {
  vpc_id     = aws_vpc.ue4.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = var.name
  }
}
