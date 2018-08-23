# Variables for Active Directory module

variable "ad_name" {
  default = "corp.mycompany.com"
}

variable "ad_password" {}

variable "ad_edition" {
  default = "Standard"
}

variable "ad_type" {
  default = "MicrosoftAD"
}

variable "vpc_id" {}

variable "subnet_ids" {
  type = "list"
}
