#vpc 
output "vpc_id" {
  value = aws_vpc.main.id
}
#avaliability zone 
output "az_info" {
  value = data.aws_availability_zones.available
}

#peering 
output "default_vpc_info" {
  value = data.aws_vpc.default
}
# default route table peering
output "main_route_table_info" {
  value = data.aws_route_table.main
}