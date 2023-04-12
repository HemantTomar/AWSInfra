provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "example" {
  ami           = " " 
  instance_type = "t2.micro" 

  tags = {
    Name = "example-instance"
  }

 
  security_group = [aws_security_group.example.id]
}

resource "aws_security_group" "example" {
  name_prefix = "jump-sg"
}
