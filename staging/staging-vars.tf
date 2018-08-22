variable "subnet_count" {
  type    = "string"
  default = 2
}

variable "region" {
  default = "ap-south-1"
}

variable "vpc_endpoind_service" {
  default = "com.amazonaws.ap-south-1.s3"
}
