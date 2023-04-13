provider "aws" {
  region = "ap-south-1" 
}

terraform {
  backend "s3" {
    bucket = "terraform-state111"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_vpc" "my_vpc" {
  # (resource arguments)
}

resource "aws_instance" "example" {
  ami           = "ami-07d3a50bd29811cd1" 
  instance_type = "t2.micro" 

  tags = {
    Name = "jump-host"
  }
}


