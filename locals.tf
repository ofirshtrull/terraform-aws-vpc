
locals {
  public_cidrs = [
    cidrsubnet(var.vpc_cidr_block, 8, 0),
    cidrsubnet(var.vpc_cidr_block, 8, 1),
    cidrsubnet(var.vpc_cidr_block, 8, 2),
    cidrsubnet(var.vpc_cidr_block, 8, 3),
    cidrsubnet(var.vpc_cidr_block, 8, 4)
  ]
  private_cidrs = [
    cidrsubnet(var.vpc_cidr_block, 8, 10),
    cidrsubnet(var.vpc_cidr_block, 8, 11),
    cidrsubnet(var.vpc_cidr_block, 8, 12),
    cidrsubnet(var.vpc_cidr_block, 8, 13),
    cidrsubnet(var.vpc_cidr_block, 8, 14)
  ]
}
