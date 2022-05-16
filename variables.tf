variable "region" {
  default = "us-west-1"
}

variable "tags" {
  default = {
    Name        = "3-grupa-jekaterina-saveljeva"
    Environment = "Stage"
    Product     = "Hello world app"
  }
}