# AWS VPC Module

**This module is no longer being maintained** <br/>

Terraform module that implements a VPC and associated resources. Based off the [AWS VPC Module](https://github.com/terraform-aws-modules/terraform-aws-vpc)

As there is a version constraint set for the AWS provider, when calling this module, it is recommended to pass a reference of the current AWS provider in the module as per the [documentation](https://www.terraform.io/docs/configuration/modules.html#passing-providers-explicitly)

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| amazon\_side\_asn | The Autonomous System Number (ASN) for the Amazon side of the gateway. By default the virtual private gateway is created with the current default Amazon ASN. | string | `"64512"` | no |
| apigw\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for API GW endpoint | string | `"false"` | no |
| apigw\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for API GW  endpoint | list | `<list>` | no |
| apigw\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for API GW endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| assign\_generated\_ipv6\_cidr\_block | Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block | string | `"false"` | no |
| cidr | The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden | string | `"0.0.0.0/0"` | no |
| cloudtrail\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for CloudTrail endpoint | string | `"false"` | no |
| cloudtrail\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for CloudTrail endpoint | list | `<list>` | no |
| cloudtrail\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for CloudTrail endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| create\_database\_internet\_gateway\_route | Controls if an internet gateway route for public database access should be created | string | `"false"` | no |
| create\_database\_nat\_gateway\_route | Controls if a nat gateway route should be created to give internet access to the database subnets | string | `"false"` | no |
| create\_database\_subnet\_group | Controls if database subnet group should be created | string | `"true"` | no |
| create\_database\_subnet\_route\_table | Controls if separate route table for database should be created | string | `"false"` | no |
| create\_elasticache\_subnet\_group | Controls if elasticache subnet group should be created | string | `"true"` | no |
| create\_elasticache\_subnet\_route\_table | Controls if separate route table for elasticache should be created | string | `"false"` | no |
| create\_redshift\_subnet\_group | Controls if redshift subnet group should be created | string | `"true"` | no |
| create\_redshift\_subnet\_route\_table | Controls if separate route table for redshift should be created | string | `"false"` | no |
| create\_vpc | Controls if VPC should be created (it affects almost all resources) | string | `"true"` | no |
| database\_acl\_tags | Additional tags for the database subnets network ACL | map | `<map>` | no |
| database\_dedicated\_network\_acl | Whether to use dedicated network ACL (not default) and custom rules for database subnets | string | `"false"` | no |
| database\_inbound\_acl\_rules | Database subnets inbound network ACL rules | list | `<list>` | no |
| database\_outbound\_acl\_rules | Database subnets outbound network ACL rules | list | `<list>` | no |
| database\_route\_table\_tags | Additional tags for the database route tables | map | `<map>` | no |
| database\_subnet\_group\_tags | Additional tags for the database subnet group | map | `<map>` | no |
| database\_subnet\_suffix | Suffix to append to database subnets name | string | `"db"` | no |
| database\_subnet\_tags | Additional tags for the database subnets | map | `<map>` | no |
| database\_subnets | A list of database subnets | list | `<list>` | no |
| default\_network\_acl\_egress | List of maps of egress rules to set on the Default Network ACL | list | `<list>` | no |
| default\_network\_acl\_ingress | List of maps of ingress rules to set on the Default Network ACL | list | `<list>` | no |
| default\_network\_acl\_name | Name to be used on the Default Network ACL | string | `""` | no |
| default\_network\_acl\_tags | Additional tags for the Default Network ACL | map | `<map>` | no |
| default\_vpc\_enable\_classiclink | Should be true to enable ClassicLink in the Default VPC | string | `"false"` | no |
| default\_vpc\_enable\_dns\_hostnames | Should be true to enable DNS hostnames in the Default VPC | string | `"false"` | no |
| default\_vpc\_enable\_dns\_support | Should be true to enable DNS support in the Default VPC | string | `"true"` | no |
| default\_vpc\_name | Name to be used on the Default VPC | string | `""` | no |
| default\_vpc\_tags | Additional tags for the Default VPC | map | `<map>` | no |
| dhcp\_options\_domain\_name | Specifies DNS name for DHCP options set (requires enable_dhcp_options set to true) | string | `""` | no |
| dhcp\_options\_domain\_name\_servers | Specify a list of DNS server addresses for DHCP options set, default to AWS provided (requires enable_dhcp_options set to true) | list | `<list>` | no |
| dhcp\_options\_netbios\_name\_servers | Specify a list of netbios servers for DHCP options set (requires enable_dhcp_options set to true) | list | `<list>` | no |
| dhcp\_options\_netbios\_node\_type | Specify netbios node_type for DHCP options set (requires enable_dhcp_options set to true) | string | `""` | no |
| dhcp\_options\_ntp\_servers | Specify a list of NTP servers for DHCP options set (requires enable_dhcp_options set to true) | list | `<list>` | no |
| dhcp\_options\_tags | Additional tags for the DHCP option set (requires enable_dhcp_options set to true) | map | `<map>` | no |
| ec2\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for EC2 endpoint | string | `"false"` | no |
| ec2\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for EC2 endpoint | list | `<list>` | no |
| ec2\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for EC2 endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| ec2messages\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for EC2MESSAGES endpoint | string | `"false"` | no |
| ec2messages\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for EC2MESSAGES endpoint | list | `<list>` | no |
| ec2messages\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for EC2MESSAGES endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| ecr\_api\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for ECR API endpoint | string | `"false"` | no |
| ecr\_api\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for ECR API endpoint | list | `<list>` | no |
| ecr\_api\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for ECR api endpoint. If omitted, private subnets will be used. | list | `<list>` | no |
| ecr\_dkr\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for ECR DKR endpoint | string | `"false"` | no |
| ecr\_dkr\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for ECR DKR endpoint | list | `<list>` | no |
| ecr\_dkr\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for ECR dkr endpoint. If omitted, private subnets will be used. | list | `<list>` | no |
| ecs\_agent\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for ECS Agent endpoint | string | `"false"` | no |
| ecs\_agent\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for ECS Agent endpoint | list | `<list>` | no |
| ecs\_agent\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for ECS Agent endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| ecs\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for ECS endpoint | string | `"false"` | no |
| ecs\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for ECS endpoint | list | `<list>` | no |
| ecs\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for ECS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| ecs\_telemetry\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for ECS Telemetry endpoint | string | `"false"` | no |
| ecs\_telemetry\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for ECS Telemetry endpoint | list | `<list>` | no |
| ecs\_telemetry\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for ECS Telemetry endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| eks\_cluster\_name | Name of EKS Cluster. If set adds tags to VPC and Subnet resources | string | `""` | no |
| elasticache\_acl\_tags | Additional tags for the elasticache subnets network ACL | map | `<map>` | no |
| elasticache\_dedicated\_network\_acl | Whether to use dedicated network ACL (not default) and custom rules for elasticache subnets | string | `"false"` | no |
| elasticache\_inbound\_acl\_rules | Elasticache subnets inbound network ACL rules | list | `<list>` | no |
| elasticache\_outbound\_acl\_rules | Elasticache subnets outbound network ACL rules | list | `<list>` | no |
| elasticache\_route\_table\_tags | Additional tags for the elasticache route tables | map | `<map>` | no |
| elasticache\_subnet\_suffix | Suffix to append to elasticache subnets name | string | `"elasticache"` | no |
| elasticache\_subnet\_tags | Additional tags for the elasticache subnets | map | `<map>` | no |
| elasticache\_subnets | A list of elasticache subnets | list | `<list>` | no |
| elasticloadbalancing\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for Elastic Load Balancing endpoint | string | `"false"` | no |
| elasticloadbalancing\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for Elastic Load Balancing endpoint | list | `<list>` | no |
| elasticloadbalancing\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for Elastic Load Balancing endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| enable\_apigw\_endpoint | Should be true if you want to provision an api gateway endpoint to the VPC | string | `"false"` | no |
| enable\_cloudtrail\_endpoint | Should be true if you want to provision a CloudTrail endpoint to the VPC | string | `"false"` | no |
| enable\_dhcp\_options | Should be true if you want to specify a DHCP options set with a custom domain name, DNS servers, NTP servers, netbios servers, and/or netbios server type | string | `"false"` | no |
| enable\_dns\_hostnames | Should be true to enable DNS hostnames in the VPC | string | `"false"` | no |
| enable\_dns\_support | Should be true to enable DNS support in the VPC | string | `"true"` | no |
| enable\_dynamodb\_endpoint | Should be true if you want to provision a DynamoDB endpoint to the VPC | string | `"false"` | no |
| enable\_ec2\_endpoint | Should be true if you want to provision an EC2 endpoint to the VPC | string | `"false"` | no |
| enable\_ec2messages\_endpoint | Should be true if you want to provision an EC2MESSAGES endpoint to the VPC | string | `"false"` | no |
| enable\_ecr\_api\_endpoint | Should be true if you want to provision an ecr api endpoint to the VPC | string | `"false"` | no |
| enable\_ecr\_dkr\_endpoint | Should be true if you want to provision an ecr dkr endpoint to the VPC | string | `"false"` | no |
| enable\_ecs\_agent\_endpoint | Should be true if you want to provision a ECS Agent endpoint to the VPC | string | `"false"` | no |
| enable\_ecs\_endpoint | Should be true if you want to provision a ECS endpoint to the VPC | string | `"false"` | no |
| enable\_ecs\_telemetry\_endpoint | Should be true if you want to provision a ECS Telemetry endpoint to the VPC | string | `"false"` | no |
| enable\_elasticloadbalancing\_endpoint | Should be true if you want to provision a Elastic Load Balancing endpoint to the VPC | string | `"false"` | no |
| enable\_events\_endpoint | Should be true if you want to provision a CloudWatch Events endpoint to the VPC | string | `"false"` | no |
| enable\_kms\_endpoint | Should be true if you want to provision a KMS endpoint to the VPC | string | `"false"` | no |
| enable\_logs\_endpoint | Should be true if you want to provision a CloudWatch Logs endpoint to the VPC | string | `"false"` | no |
| enable\_monitoring\_endpoint | Should be true if you want to provision a CloudWatch Monitoring endpoint to the VPC | string | `"false"` | no |
| enable\_nat\_gateway | Should be true if you want to provision NAT Gateways for each of your private networks | string | `"false"` | no |
| enable\_public\_redshift | Controls if redshift should have public routing table | string | `"false"` | no |
| enable\_s3\_endpoint | Should be true if you want to provision an S3 endpoint to the VPC | string | `"false"` | no |
| enable\_sns\_endpoint | Should be true if you want to provision a SNS endpoint to the VPC | string | `"false"` | no |
| enable\_sqs\_endpoint | Should be true if you want to provision an SQS endpoint to the VPC | string | `"false"` | no |
| enable\_ssm\_endpoint | Should be true if you want to provision an SSM endpoint to the VPC | string | `"false"` | no |
| enable\_ssmmessages\_endpoint | Should be true if you want to provision a SSMMESSAGES endpoint to the VPC | string | `"false"` | no |
| enable\_vpn\_gateway | Should be true if you want to create a new VPN Gateway resource and attach it to the VPC | string | `"false"` | no |
| events\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for CloudWatch Events endpoint | string | `"false"` | no |
| events\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for CloudWatch Events endpoint | list | `<list>` | no |
| events\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for CloudWatch Events endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| external\_nat\_ip\_ids | List of EIP IDs to be assigned to the NAT Gateways (used in combination with reuse_nat_ips) | list | `<list>` | no |
| igw\_tags | Additional tags for the internet gateway | map | `<map>` | no |
| instance\_tenancy | A tenancy option for instances launched into the VPC | string | `"default"` | no |
| intra\_acl\_tags | Additional tags for the intra subnets network ACL | map | `<map>` | no |
| intra\_dedicated\_network\_acl | Whether to use dedicated network ACL (not default) and custom rules for intra subnets | string | `"false"` | no |
| intra\_inbound\_acl\_rules | Intra subnets inbound network ACLs | list | `<list>` | no |
| intra\_outbound\_acl\_rules | Intra subnets outbound network ACLs | list | `<list>` | no |
| intra\_route\_table\_tags | Additional tags for the intra route tables | map | `<map>` | no |
| intra\_subnet\_suffix | Suffix to append to intra subnets name | string | `"intra"` | no |
| intra\_subnet\_tags | Additional tags for the intra subnets | map | `<map>` | no |
| intra\_subnets | A list of intra subnets | list | `<list>` | no |
| kms\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for KMS endpoint | string | `"false"` | no |
| kms\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for KMS endpoint | list | `<list>` | no |
| kms\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for KMS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| logs\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for CloudWatch Logs endpoint | string | `"false"` | no |
| logs\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for CloudWatch Logs endpoint | list | `<list>` | no |
| logs\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for CloudWatch Logs endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| manage\_default\_network\_acl | Should be true to adopt and manage Default Network ACL | string | `"false"` | no |
| manage\_default\_vpc | Should be true to adopt and manage Default VPC | string | `"false"` | no |
| map\_public\_ip\_on\_launch | Should be false if you do not want to auto-assign public IP on launch | string | `"true"` | no |
| monitoring\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for CloudWatch Monitoring endpoint | string | `"false"` | no |
| monitoring\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for CloudWatch Monitoring endpoint | list | `<list>` | no |
| monitoring\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for CloudWatch Monitoring endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| name | Name to be used on all the resources as identifier | string | `""` | no |
| nat\_eip\_tags | Additional tags for the NAT EIP | map | `<map>` | no |
| nat\_gateway\_tags | Additional tags for the NAT gateways | map | `<map>` | no |
| one\_nat\_gateway\_per\_az | Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`. | string | `"false"` | no |
| private\_acl\_tags | Additional tags for the private subnets network ACL | map | `<map>` | no |
| private\_dedicated\_network\_acl | Whether to use dedicated network ACL (not default) and custom rules for private subnets | string | `"false"` | no |
| private\_inbound\_acl\_rules | Private subnets inbound network ACLs | list | `<list>` | no |
| private\_outbound\_acl\_rules | Private subnets outbound network ACLs | list | `<list>` | no |
| private\_route\_table\_tags | Additional tags for the private route tables | map | `<map>` | no |
| private\_subnet\_suffix | Suffix to append to private subnets name | string | `"private"` | no |
| private\_subnet\_tags | Additional tags for the private subnets | map | `<map>` | no |
| private\_subnets | A list of private subnets inside the VPC | list | `<list>` | no |
| propagate\_private\_route\_tables\_vgw | Should be true if you want route table propagation | string | `"false"` | no |
| propagate\_public\_route\_tables\_vgw | Should be true if you want route table propagation | string | `"false"` | no |
| public\_acl\_tags | Additional tags for the public subnets network ACL | map | `<map>` | no |
| public\_dedicated\_network\_acl | Whether to use dedicated network ACL (not default) and custom rules for public subnets | string | `"false"` | no |
| public\_inbound\_acl\_rules | Public subnets inbound network ACLs | list | `<list>` | no |
| public\_outbound\_acl\_rules | Public subnets outbound network ACLs | list | `<list>` | no |
| public\_route\_table\_tags | Additional tags for the public route tables | map | `<map>` | no |
| public\_subnet\_suffix | Suffix to append to public subnets name | string | `"public"` | no |
| public\_subnet\_tags | Additional tags for the public subnets | map | `<map>` | no |
| public\_subnets | A list of public subnets inside the VPC | list | `<list>` | no |
| redshift\_acl\_tags | Additional tags for the redshift subnets network ACL | map | `<map>` | no |
| redshift\_dedicated\_network\_acl | Whether to use dedicated network ACL (not default) and custom rules for redshift subnets | string | `"false"` | no |
| redshift\_inbound\_acl\_rules | Redshift subnets inbound network ACL rules | list | `<list>` | no |
| redshift\_outbound\_acl\_rules | Redshift subnets outbound network ACL rules | list | `<list>` | no |
| redshift\_route\_table\_tags | Additional tags for the redshift route tables | map | `<map>` | no |
| redshift\_subnet\_group\_tags | Additional tags for the redshift subnet group | map | `<map>` | no |
| redshift\_subnet\_suffix | Suffix to append to redshift subnets name | string | `"redshift"` | no |
| redshift\_subnet\_tags | Additional tags for the redshift subnets | map | `<map>` | no |
| redshift\_subnets | A list of redshift subnets | list | `<list>` | no |
| reuse\_nat\_ips | Should be true if you don't want EIPs to be created for your NAT Gateways and will instead pass them in via the 'external_nat_ip_ids' variable | string | `"false"` | no |
| secondary\_cidr\_blocks | List of secondary CIDR blocks to associate with the VPC to extend the IP Address pool | list | `<list>` | no |
| single\_nat\_gateway | Should be true if you want to provision a single shared NAT Gateway across all of your private networks | string | `"false"` | no |
| sns\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for SNS endpoint | string | `"false"` | no |
| sns\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for SNS endpoint | list | `<list>` | no |
| sns\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for SNS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| sqs\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for SQS endpoint | string | `"false"` | no |
| sqs\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for SQS endpoint | list | `<list>` | no |
| sqs\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for SQS endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| ssm\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for SSM endpoint | string | `"false"` | no |
| ssm\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for SSM endpoint | list | `<list>` | no |
| ssm\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for SSM endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| ssmmessages\_endpoint\_private\_dns\_enabled | Whether or not to associate a private hosted zone with the specified VPC for SSMMESSAGES endpoint | string | `"false"` | no |
| ssmmessages\_endpoint\_security\_group\_ids | The ID of one or more security groups to associate with the network interface for SSMMESSAGES endpoint | list | `<list>` | no |
| ssmmessages\_endpoint\_subnet\_ids | The ID of one or more subnets in which to create a network interface for SSMMESSAGES endpoint. Only a single subnet within an AZ is supported. If omitted, private subnets will be used. | list | `<list>` | no |
| tags | A map of tags to add to all resources | map | `<map>` | no |
| transit\_gateway\_destination\_cidrs | List of cidr blocks to associate with the `transit_gateway_id` variable. Routes are added to public and private route tables | list | `<list>` | no |
| transit\_gateway\_id | The transit gateway id to associate routes for `tranist_gateway_destination_cidrs` list. Routes are added to public and private route tables | string | `""` | no |
| vpc\_tags | Additional tags for the VPC | map | `<map>` | no |
| vpn\_gateway\_id | ID of VPN Gateway to attach to the VPC | string | `""` | no |
| vpn\_gateway\_tags | Additional tags for the VPN gateway | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| azs | A list of availability zones specified as argument to this module |
| database\_network\_acl\_id | ID of the database network ACL |
| database\_route\_table\_ids | List of IDs of database route tables |
| database\_subnet\_arns | List of ARNs of database subnets |
| database\_subnet\_group | ID of database subnet group |
| database\_subnets | List of IDs of database subnets |
| database\_subnets\_cidr\_blocks | List of cidr_blocks of database subnets |
| default\_network\_acl\_id | The ID of the default network ACL |
| default\_route\_table\_id | The ID of the default route table |
| default\_security\_group\_id | The ID of the security group created by default on VPC creation |
| default\_vpc\_cidr\_block | The CIDR block of the VPC |
| default\_vpc\_default\_network\_acl\_id | The ID of the default network ACL |
| default\_vpc\_default\_route\_table\_id | The ID of the default route table |
| default\_vpc\_default\_security\_group\_id | The ID of the security group created by default on VPC creation |
| default\_vpc\_enable\_dns\_hostnames | Whether or not the VPC has DNS hostname support |
| default\_vpc\_enable\_dns\_support | Whether or not the VPC has DNS support |
| default\_vpc\_id | The ID of the VPC |
| default\_vpc\_instance\_tenancy | Tenancy of instances spin up within VPC |
| default\_vpc\_main\_route\_table\_id | The ID of the main route table associated with this VPC |
| elasticache\_network\_acl\_id | ID of the elasticache network ACL |
| elasticache\_route\_table\_ids | List of IDs of elasticache route tables |
| elasticache\_subnet\_arns | List of ARNs of elasticache subnets |
| elasticache\_subnet\_group | ID of elasticache subnet group |
| elasticache\_subnet\_group\_name | Name of elasticache subnet group |
| elasticache\_subnets | List of IDs of elasticache subnets |
| elasticache\_subnets\_cidr\_blocks | List of cidr_blocks of elasticache subnets |
| igw\_id | The ID of the Internet Gateway |
| intra\_network\_acl\_id | ID of the intra network ACL |
| intra\_route\_table\_ids | List of IDs of intra route tables |
| intra\_subnet\_arns | List of ARNs of intra subnets |
| intra\_subnets | List of IDs of intra subnets |
| intra\_subnets\_cidr\_blocks | List of cidr_blocks of intra subnets |
| nat\_ids | List of allocation ID of Elastic IPs created for AWS NAT Gateway |
| nat\_public\_ips | List of public Elastic IPs created for AWS NAT Gateway |
| natgw\_ids | List of NAT Gateway IDs |
| private\_network\_acl\_id | ID of the private network ACL |
| private\_route\_table\_ids | List of IDs of private route tables |
| private\_subnet\_arns | List of ARNs of private subnets |
| private\_subnets | List of IDs of private subnets |
| private\_subnets\_cidr\_blocks | List of cidr_blocks of private subnets |
| public\_network\_acl\_id | ID of the public network ACL |
| public\_route\_table\_ids | List of IDs of public route tables |
| public\_subnet\_arns | List of ARNs of public subnets |
| public\_subnets | List of IDs of public subnets |
| public\_subnets\_cidr\_blocks | List of cidr_blocks of public subnets |
| redshift\_network\_acl\_id | ID of the redshift network ACL |
| redshift\_route\_table\_ids | List of IDs of redshift route tables |
| redshift\_subnet\_arns | List of ARNs of redshift subnets |
| redshift\_subnet\_group | ID of redshift subnet group |
| redshift\_subnets | List of IDs of redshift subnets |
| redshift\_subnets\_cidr\_blocks | List of cidr_blocks of redshift subnets |
| vgw\_id | The ID of the VPN Gateway |
| vpc\_arn | The ARN of the VPC |
| vpc\_cidr\_block | The CIDR block of the VPC |
| vpc\_enable\_dns\_hostnames | Whether or not the VPC has DNS hostname support |
| vpc\_enable\_dns\_support | Whether or not the VPC has DNS support |
| vpc\_endpoint\_apigw\_dns\_entry | The DNS entries for the VPC Endpoint for APIGW. |
| vpc\_endpoint\_apigw\_id | The ID of VPC endpoint for APIGW |
| vpc\_endpoint\_apigw\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for APIGW. |
| vpc\_endpoint\_cloudtrail\_dns\_entry | The DNS entries for the VPC Endpoint for CloudTrail. |
| vpc\_endpoint\_cloudtrail\_id | The ID of VPC endpoint for CloudTrail |
| vpc\_endpoint\_cloudtrail\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for CloudTrail. |
| vpc\_endpoint\_dynamodb\_id | The ID of VPC endpoint for DynamoDB |
| vpc\_endpoint\_dynamodb\_pl\_id | The prefix list for the DynamoDB VPC endpoint. |
| vpc\_endpoint\_ec2\_dns\_entry | The DNS entries for the VPC Endpoint for EC2. |
| vpc\_endpoint\_ec2\_id | The ID of VPC endpoint for EC2 |
| vpc\_endpoint\_ec2\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for EC2 |
| vpc\_endpoint\_ec2messages\_dns\_entry | The DNS entries for the VPC Endpoint for EC2MESSAGES. |
| vpc\_endpoint\_ec2messages\_id | The ID of VPC endpoint for EC2MESSAGES |
| vpc\_endpoint\_ec2messages\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for EC2MESSAGES |
| vpc\_endpoint\_ecr\_api\_dns\_entry | The DNS entries for the VPC Endpoint for ECR API. |
| vpc\_endpoint\_ecr\_api\_id | The ID of VPC endpoint for ECR API |
| vpc\_endpoint\_ecr\_api\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for ECR API. |
| vpc\_endpoint\_ecr\_dkr\_dns\_entry | The DNS entries for the VPC Endpoint for ECR DKR. |
| vpc\_endpoint\_ecr\_dkr\_id | The ID of VPC endpoint for ECR DKR |
| vpc\_endpoint\_ecr\_dkr\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for ECR DKR. |
| vpc\_endpoint\_ecs\_agent\_dns\_entry | The DNS entries for the VPC Endpoint for ECS Agent. |
| vpc\_endpoint\_ecs\_agent\_id | The ID of VPC endpoint for ECS Agent |
| vpc\_endpoint\_ecs\_agent\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for ECS Agent. |
| vpc\_endpoint\_ecs\_dns\_entry | The DNS entries for the VPC Endpoint for ECS. |
| vpc\_endpoint\_ecs\_id | The ID of VPC endpoint for ECS |
| vpc\_endpoint\_ecs\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for ECS. |
| vpc\_endpoint\_ecs\_telemetry\_dns\_entry | The DNS entries for the VPC Endpoint for ECS Telemetry. |
| vpc\_endpoint\_ecs\_telemetry\_id | The ID of VPC endpoint for ECS Telemetry |
| vpc\_endpoint\_ecs\_telemetry\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for ECS Telemetry. |
| vpc\_endpoint\_elasticloadbalancing\_dns\_entry | The DNS entries for the VPC Endpoint for Elastic Load Balancing. |
| vpc\_endpoint\_elasticloadbalancing\_id | The ID of VPC endpoint for Elastic Load Balancing |
| vpc\_endpoint\_elasticloadbalancing\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for Elastic Load Balancing. |
| vpc\_endpoint\_events\_dns\_entry | The DNS entries for the VPC Endpoint for CloudWatch Events. |
| vpc\_endpoint\_events\_id | The ID of VPC endpoint for CloudWatch Events |
| vpc\_endpoint\_events\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for CloudWatch Events. |
| vpc\_endpoint\_kms\_dns\_entry | The DNS entries for the VPC Endpoint for KMS. |
| vpc\_endpoint\_kms\_id | The ID of VPC endpoint for KMS |
| vpc\_endpoint\_kms\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for KMS. |
| vpc\_endpoint\_logs\_dns\_entry | The DNS entries for the VPC Endpoint for CloudWatch Logs. |
| vpc\_endpoint\_logs\_id | The ID of VPC endpoint for CloudWatch Logs |
| vpc\_endpoint\_logs\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for CloudWatch Logs. |
| vpc\_endpoint\_monitoring\_dns\_entry | The DNS entries for the VPC Endpoint for CloudWatch Monitoring. |
| vpc\_endpoint\_monitoring\_id | The ID of VPC endpoint for CloudWatch Monitoring |
| vpc\_endpoint\_monitoring\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for CloudWatch Monitoring. |
| vpc\_endpoint\_s3\_id | The ID of VPC endpoint for S3 |
| vpc\_endpoint\_s3\_pl\_id | The prefix list for the S3 VPC endpoint. |
| vpc\_endpoint\_sns\_dns\_entry | The DNS entries for the VPC Endpoint for SNS. |
| vpc\_endpoint\_sns\_id | The ID of VPC endpoint for SNS |
| vpc\_endpoint\_sns\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for SNS. |
| vpc\_endpoint\_sqs\_dns\_entry | The DNS entries for the VPC Endpoint for SQS. |
| vpc\_endpoint\_sqs\_id | The ID of VPC endpoint for SQS |
| vpc\_endpoint\_sqs\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for SQS. |
| vpc\_endpoint\_ssm\_dns\_entry | The DNS entries for the VPC Endpoint for SSM. |
| vpc\_endpoint\_ssm\_id | The ID of VPC endpoint for SSM |
| vpc\_endpoint\_ssm\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for SSM. |
| vpc\_endpoint\_ssmmessages\_dns\_entry | The DNS entries for the VPC Endpoint for SSMMESSAGES. |
| vpc\_endpoint\_ssmmessages\_id | The ID of VPC endpoint for SSMMESSAGES |
| vpc\_endpoint\_ssmmessages\_network\_interface\_ids | One or more network interfaces for the VPC Endpoint for SSMMESSAGES. |
| vpc\_id | The ID of the VPC |
| vpc\_instance\_tenancy | Tenancy of instances spin up within VPC |
| vpc\_main\_route\_table\_id | The ID of the main route table associated with this VPC |
| vpc\_secondary\_cidr\_blocks | List of secondary CIDR blocks of the VPC |

