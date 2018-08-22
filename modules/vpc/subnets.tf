resource "aws_subnet" "subnets" {
  count             = "${var.subnet_count}"
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidrs[count.index]}"
  availability_zone = "${var.azs[count.index]}"

  tags {
    Name = "Main"
  }
}

output "subnet_ids" {
  value = "${aws_subnet.subnets.*.id}"
}
