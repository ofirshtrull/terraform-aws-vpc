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
| aws\_region | n/a |
| private\_cidrs | n/a |
| private\_subnets | The IDs of vpn private subnets |
| public\_cidrs | n/a |
| public\_subnets | The IDs of vpn public subnets |
| vpc\_cidr\_block | n/a |
| vpc\_id | vpc |
