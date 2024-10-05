#mandatory
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}
variable "dns_hostname" {
  default = true
}
variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

#optional

variable "common_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}