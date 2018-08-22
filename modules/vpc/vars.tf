# Variables for VPC module

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "vpc_instance_tenancy" {
  default = "default"
}

variable "vpc_id" {}

variable "subnet_cidrs" {
  type    = "list"
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "subnet_count" {}

variable "azs" {
  type = "list"
}
