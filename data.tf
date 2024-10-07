# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}

# # e.g., Create subnets in the first two available availability zones

# resource "aws_subnet" "primary" {
#   availability_zone = data.aws_availability_zones.available.names[0]

#   # ...
# }

# resource "aws_subnet" "secondary" {
#   availability_zone = data.aws_availability_zones.available.names[1]

#   # ...
# }

#peering

data "aws_vpc" "default" {
  default = true
}

#default route table
data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id
  # to filter if there are multiple default vpc
  filter {
    name   = "association.main"
    values = ["true"]
  }
}
