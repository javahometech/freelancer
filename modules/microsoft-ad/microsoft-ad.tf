resource "aws_directory_service_directory" "myapp_ad" {
  name     = "${var.ad_name}"
  password = "${var.ad_password}"
  edition  = "${var.ad_edition}"
  type     = "${var.ad_type}"

  vpc_settings {
    vpc_id     = "${var.vpc_id}"
    subnet_ids = ["${var.subnet_ids}"]
  }

  tags {
    Project = "Demo"
  }
}
