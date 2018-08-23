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
  route_table_ids      = ["${module.my_vpc.route_tbl_id}"]
}

module "microsoft_ad" {
  source      = "../modules/microsoft-ad"
  ad_name     = "corp.mycompany.com"
  ad_password = "MyApp@1234"
  ad_edition  = "Standard"
  ad_type     = "MicrosoftAD"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_ids  = "${module.my_vpc.subnet_ids}"
}

output "sub_ids" {
  value = "${module.my_vpc.subnet_ids}"
}
