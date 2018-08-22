provider "aws" {
  region = "${var.region}"
}

# Build VPC and Subnets
module "my_vpc" {
  source       = "../modules/vpc"
  vpc_id       = "${module.my_vpc.vpc_id}"
  subnet_count = "${var.subnet_count}"
  azs          = "${data.aws_availability_zones.azs.names}"
}

module "vpc_endpoint" {
  source               = "../modules/vpc-endpoints"
  vpc_id               = "${module.my_vpc.vpc_id}"
  vpc_endpoind_service = "${var.vpc_endpoind_service}"
}

output "sub_ids" {
  value = "${module.my_vpc.subnet_ids}"
}
