terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

#Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

module "ec2" {
  source = "../../modules/ec2"

  name = var.name

  cidr = var.cidr
  azs  = var.azs

  public_subnets = var.public_subnets
}

module "vpc" {
  source = "../../modules/vpc"

  name = var.name

  cidr = var.cidr
  azs  = var.azs

  public_subnets = var.public_subnets
}