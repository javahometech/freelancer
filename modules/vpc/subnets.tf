resource "aws_subnet" "subnets" {
  count             = "${var.subnet_count}"
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidrs[count.index]}"
  availability_zone = "${var.azs[count.index]}"

  tags {
    Name = "Main"
  }
}

# Add Route tables for Subnets

resource "aws_route_table" "private_rt" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name = "private_rt"
  }
}

resource "aws_route_table_association" "private_subnets_association" {
  count          = "${var.subnet_count}"
  subnet_id      = "${aws_subnet.subnets.*.id[count.index]}"
  route_table_id = "${aws_route_table.private_rt.id}"
}

output "subnet_ids" {
  value = "${aws_subnet.subnets.*.id}"
}

output "route_tbl_id" {
  value = "${aws_route_table.private_rt.id}"
}
