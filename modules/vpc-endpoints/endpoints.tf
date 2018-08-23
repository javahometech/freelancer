resource "aws_vpc_endpoint" "vpc_endpoint" {
  vpc_id            = "${var.vpc_id}"
  service_name      = "${var.vpc_endpoind_service}"
  route_table_ids   = ["${var.route_table_ids}"]
  vpc_endpoint_type = "${var.vpc_endpoint_type}"
}
