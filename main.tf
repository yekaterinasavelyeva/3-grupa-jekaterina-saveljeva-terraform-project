provider "aws" {
  profile = "lu_jekaterina"
  region = var.region
}

module "child" {
  source = "./child"
}

module "ec2" {
  source  = "./modules/ec2"
  version = "~> 3.0"
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  tags = var.tags
  cidr = var.cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}

module "vpc" {
  source  = "./modules/vpc"
  version = "~> 3.0"

  name = var.name

  cidr = var.cidr

  public_subnets = var.public_subnets

  private_subnets = var.private_subnets
}

