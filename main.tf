provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-00ca32bbc84273381"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}