#create ex2 instances using ubuntu linux over aws cloud
#https://registry.terraform.io/browse/providers?product_intent=terraform


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"

}


resource "aws_instance" "web" {
    ami = "ami-04b70fa74e45c3917" #ubuntu ami
    instance_type = "t2.micro"

    tags = {
        Name="hello world"
    }
  
}
