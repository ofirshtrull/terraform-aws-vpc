output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr_block" {
  value = aws_vpc.main.cidr_block
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.main.arn
}

output "vpc_default_acl" {
  description = "The default network acl id"
  value       = aws_vpc.main.default_network_acl_id
}

output "private_subnets" {
  value       = aws_subnet.private.*.id
  description = "The IDs of vpn private subnets"
}

output "public_subnets" {
  value       = aws_subnet.public.*.id
  description = "The IDs of vpn public subnets"
}

output "public_cidrs" {
  value = aws_subnet.public.*.cidr_block
}

output "private_cidrs" {
  value = aws_subnet.private.*.cidr_block
}

output "route_table_private" {
  value = aws_route_table.private.id
}

output "route_table_public" {
  value = aws_route_table.public.id
}
output "nat_gateway_public_ip" {
  value = aws_nat_gateway.main.public_ip
}
