variable "name" {
  description = "Name to be used on all the resources as identifier"
}

variable "shortname" {}

variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC."
}

variable "vpc_enable_dns_hostnames" {
  default     = true
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults to true."
}

variable "vpc_flow_log_traffic_type" {
  default     = "REJECT"
  description = "The type of traffic ('ACCEPT', 'REJECT', or 'ALL') to log. Defaults to 'REJECT'."
}

variable "region" {
  description = "The region in which to deploy the VPC."
}

variable "vpc_flow_log_retention_days" {
  default     = 7
  description = "The number of days to retain VPC flow logs in CloudWatch for. Defaults to 180."
}

variable "vpc_instance_tenancy" {
  default     = "default"
  description = "Tenancy of instances spun up within the VPC (`default`, `dedicated`).)"
}

variable "common_tags" {
  type    = map
  default = {}
}

variable "zone" {
  type    = list
  default = ["A", "B", "C"]
}

variable "num_of_public_subnets" {
  description = "Number of Public subnets"

}
variable "num_of_private_subnets" {
  description = "Number of Private subnets"
}
