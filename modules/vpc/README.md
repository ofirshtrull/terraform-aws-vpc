## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| common\_tags | n/a | `map` | `{}` | no |
| name | Name to be used on all the resources as identifier | `any` | n/a | yes |
| num\_of\_private\_subnets | Number of Private subnets | `any` | n/a | yes |
| num\_of\_public\_subnets | Number of Public subnets | `any` | n/a | yes |
| shortname | n/a | `any` | n/a | yes |
| vpc\_cidr\_block | The CIDR block of the VPC. | `any` | n/a | yes |
| vpc\_enable\_dns\_hostnames | A boolean flag to enable/disable DNS hostnames in the VPC. Defaults to true. | `bool` | `true` | no |
| vpc\_flow\_log\_retention\_days | The number of days to retain VPC flow logs in CloudWatch for. Defaults to 180. | `number` | `7` | no |
| vpc\_flow\_log\_traffic\_type | The type of traffic ('ACCEPT', 'REJECT', or 'ALL') to log. Defaults to 'REJECT'. | `string` | `"REJECT"` | no |
| vpc\_instance\_tenancy | Tenancy of instances spun up within the VPC (`default`, `dedicated`).) | `string` | `"default"` | no |
| zone | n/a | `list` | <pre>[<br>  "A",<br>  "B",<br>  "C"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| nat\_gateway\_public\_ip | n/a |
| private\_cidrs | n/a |
| private\_subnets | The IDs of vpn private subnets |
| public\_cidrs | n/a |
| public\_subnets | The IDs of vpn public subnets |
| route\_table\_private | n/a |
| route\_table\_public | n/a |
| vpc\_arn | The ARN of the VPC |
| vpc\_cidr\_block | n/a |
| vpc\_default\_acl | The default network acl id |
| vpc\_id | n/a |
