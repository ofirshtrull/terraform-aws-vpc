## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| aws\_region | AWS region to install the infra | `string` | `"us-east-1"` | no |
| cidr\_block | The CIDR block of the VPC. | `string` | `33` | no |
| env\_name | The name of the env | `string` | `"example"` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_region | The AWS region |
| private\_cidrs | The VPC private cidrs |
| private\_subnets\_id | The IDs of vpn private subnets |
| public\_cidrs | The VPC public cidrs |
| public\_subnets\_id | The IDs of vpn public subnets |
| vpc\_cidr\_block | The VPC cidr network |
| vpc\_id | The VPC id |
