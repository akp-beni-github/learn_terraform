#create ex2 instances using ubuntu linux over aws cloud
#https://registry.terraform.io/browse/providers?product_intent=terraform


terraform {
  required_providers {
    /*aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }*/

    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

resource "github_repository" "example" {
  name        = var.name
  description = var.description

  visibility = var.visibility
}



/*
resource "aws_instance" "web" {
    ami = "ami-04b70fa74e45c3917" #ubuntu ami
    instance_type = "t2.micro"

    tags = {
        Name="hello world"
    }
  
}*/

