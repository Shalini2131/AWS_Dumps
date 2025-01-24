resource "aws_instance" "private_instance" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI (Update as per region)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private.id
  security_groups = [aws_security_group.instance_sg.id]

  tags = {
    Name = "PrivateInstance"
  }
}
