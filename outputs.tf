//vpc
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "aws_region" {
  value = var.aws_region
}

output "vpc_cidr_block" {
  value = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "The IDs of vpn private subnets"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "The IDs of vpn public subnets"
}

output "public_cidrs" {
  value = module.vpc.public_cidrs
}

output "private_cidrs" {
  value = module.vpc.private_cidrs
}
