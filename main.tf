provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
  tags = {
    Name = "DemoInstance"
  }
}

terraform {
  backend "s3" {
    bucket = "pranit-terraform-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
