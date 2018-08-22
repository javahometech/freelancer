resource "aws_vpc" "main" {
  cidr_block       = "${var.vpc_cidr_block}"
  instance_tenancy = "${var.vpc_instance_tenancy}"

  tags {
    Name = "main"
  }
}

output "vpc_id" {
  value = "${aws_vpc.main.id}"
}
