variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "Jekaterina instance VPC"
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  type        = string
  default     = "20.10.0.0/16"
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = ["20.10.11.0/24", "20.10.12.0/24"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = ["20.10.1.0/24", "20.10.2.0/24"]
}

variable "vpc_id" {
    type = string
}