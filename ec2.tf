resource "aws_instance" "ue4" {
  ami             = "ami-00890f614e48ce866"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.ue4.id
  security_groups = [aws_default_security_group.ue4.id]
  tags = {
    Name = var.name
  }
}

resource "aws_default_security_group" "ue4" {
  vpc_id = aws_vpc.ue4.id
  tags = {
    Name = var.name
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

