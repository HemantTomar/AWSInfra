provider "aws" {
  region = "ap-south-1" 
}

resource "aws_instance" "example" {
  ami           = "ami-07d3a50bd29811cd1" 
  instance_type = "t2.micro" 

  tags = {
    Name = "example-instance"
  }
}


