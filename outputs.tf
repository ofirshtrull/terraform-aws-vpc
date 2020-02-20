//vpc
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The VPC id"
}

output "aws_region" {
  value       = var.aws_region
  description = "The AWS region"
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
  description = "The VPC cidr network"
}

output "private_subnets_id" {
  value       = module.vpc.private_subnets
  description = "The IDs of vpn private subnets"
}

output "public_subnets_id" {
  value       = module.vpc.public_subnets
  description = "The IDs of vpn public subnets"
}

output "public_cidrs" {
  value       = module.vpc.public_cidrs
  description = "The VPC public cidrs"

}

output "private_cidrs" {
  value       = module.vpc.private_cidrs
  description = "The VPC private cidrs"
}
