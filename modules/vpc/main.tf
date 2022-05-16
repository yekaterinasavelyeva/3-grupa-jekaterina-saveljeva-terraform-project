data "aws_vpc" "one" {
  id = var.vpc_id
}

data "aws_vpc" "two" {
  id = var.vpc_id
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.one.id
  availability_zone = "us-west-1"
  cidr_block = cidrsubnet(data.aws_vpc.one.cidr_block, 4, 1)

  tags = {
    Name = "Public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.two.id
  availability_zone = "us-west-1"
  cidr_block = cidrsubnet(data.aws_vpc.two.cidr_block, 4, 1)

  tags = {
    Name = "Private"
  }
}