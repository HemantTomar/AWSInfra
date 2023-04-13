provider "aws" {
  region = "ap-south-1" 
}

terraform {
  backend "s3" {
    bucket = "<your-s3-bucket-name>"
    key    = "<your-state-file-key>"
    region = "<your-s3-region>"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-07d3a50bd29811cd1" 
  instance_type = "t2.micro" 

  tags = {
    Name = "example-instance"
  }
}


