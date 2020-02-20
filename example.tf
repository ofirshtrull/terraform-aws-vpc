
module "vpc" {
  source                 = "./modules/vpc"
  name                   = format("%s-env", var.env_name)
  shortname              = var.env_name
  region                 = var.aws_region
  vpc_cidr_block         = format("172.%d.0.0/16", var.cidr_block)
  num_of_private_subnets = 3
  num_of_public_subnets  = 3
}
