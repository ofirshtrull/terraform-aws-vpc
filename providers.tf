

provider "aws" {
  shared_credentials_file = pathexpand("~/.aws/credentials")
  region                  = var.aws_region
  version                 = 2.46
}
