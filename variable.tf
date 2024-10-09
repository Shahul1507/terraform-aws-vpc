#mandatory
variable "vpc_cidr" {
  # default = "10.0.0.0/16"
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

variable "igw_tags" {
  default = {}
}
#public subnet
variable "public_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subet CIDR"
  }
}

variable "public_subnet_tags" {
  default = {}
}

#private subnet
variable "private_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid private subet CIDR"
  }
}

variable "private_subnet_tags" {
  default = {}
}

#database subnet
variable "database_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid database subet CIDR"
  }
}

variable "database_subnet_tags" {
  default = {}
}

# db subnet group tags
variable "db_subnet_group_tags" {
  default = {}
}

# elastic-ip_tags
variable "eip_tags" {
  default = {}
}
# nat_gateway_tags
variable "nat_gateway_tags" {
  default = {}
}

# public-route-table
variable "public_route_table_tags" {
  default = {}
}

# private-route-table
variable "private_route_table_tags" {
  default = {}
}

# database-route-table
variable "database_route_table_tags" {
  default = {}
}

#peering 
variable "is_peering_required" {
  type    = bool
  default = false

}

variable "vpc_peering_tags" {
  default = {}
}