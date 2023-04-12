provider "aws" {
  region = "ap-south-1" # Replace with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = " " # Replace with your desired EC2 instance AMI ID
  instance_type = "t2.micro" # Replace with your desired EC2 instance type

  tags = {
    Name = "example-instance"
  }

  # Specify the security group for the instance
  security_group = aws_security_group.example.id
}

resource "aws_security_group" "example" {
  name_prefix = "example"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your desired source IP range for SSH access
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
