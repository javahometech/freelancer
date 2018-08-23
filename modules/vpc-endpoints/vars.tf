variable "vpc_id" {}

variable "vpc_endpoind_service" {}

variable "route_table_ids" {
  type = "list"
}

variable "vpc_endpoint_type" {
  default = "Gateway"
}
