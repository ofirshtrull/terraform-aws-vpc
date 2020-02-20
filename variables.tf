/*
  Genaral
*/
variable "env_name" {
  type        = string
  default     = "example"
  description = "The name of the env"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to install the infra"
}

variable "cidr_block" {
  type        = number
  default     = 33
  description = "The CIDR block of the VPC."
}
