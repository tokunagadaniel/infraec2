terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.36"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

module "infra_ec2" {
  source = "./modules/application"

  ec2_instance_type    = "t2.micro"
  ami = "ami-0800f9916b7655289"
  tags = {
    Name = "ec2"
    Env = "dev"
  }
}