resource "aws_instance" "platform" {
  ami = "ami-00890f614e48ce866"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.platform.id]
  tags = {
    Name = var.name
  }

  //  user_data = <<-EOF
  //                #!/bin/bash
  //                sudo service apache2 start
  //                EOF

}

resource "aws_security_group" "platform" {
  name = var.name
  tags = {
    Name = var.name
  }
}

