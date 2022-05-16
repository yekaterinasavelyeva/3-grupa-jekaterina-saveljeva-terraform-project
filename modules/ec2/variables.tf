variable "tags" {
  default = {
    Name        = "EC2 instance Jekaterina"
    Environment = "Stage"
    Product     = "Spring-boot-app"
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  description = "Jekaterina EC2"
  type        = string
  default     = "Jekaterina instance EC2"
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets inside the EC2"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets inside the EC2"
  type        = list(string)
  default     = []
}