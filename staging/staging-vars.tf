variable "subnet_count" {
  type    = "string"
  default = 2
}

variable "region" {
  default = "us-east-1"
}

variable "vpc_endpoind_service" {
  default = "com.amazonaws.us-east-1.s3"
}
