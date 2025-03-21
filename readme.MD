# This module is developed by myself & creating following resorces. 

* VPC 
* Internet gateway
* Internet and VPC attachment
* 2 public subnets
* 2 private subnets
* 2 database subnets
* eip
* Nat gateway
* Public route table
* Private route table
* Database route table
* Route table & subnet association
* Routes in all tables
* Peering if required for users
* Routes of peering in requestor & acceptor VPC

## Inputs ##
* Project_name (Required): User should mention their project name. type is string.
* environment (Required): User should mention their environment. type is string.
* common_tags (Required): User should mention their comon_tags. type is map.
* cidr_block (Optionl): Default valueis 10.0.0.0/16. type is string.
* enable_dns_hostnames (Optionl): Default value is true. type is bool
* vpc_tags (Optionl): Default value is empty. type is map
* igw_tags (Optionl): Default value is empty. type is map
* public_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* public_subnet_cidr_tags (Optionl):Default value is empty. type is map
* private_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* private_subnet_cidr_tags (Optionl):Default value is empty. type is map
* database_subnet_cidrs (Required): User has to provide 2 valid subnet CIDR.
* database_subnet_cidr_tags (Optionl): Default value is empty. type is map
* map_public_ip_on_launch (Required): Default value is true. type is bool
* nat_gateway_tags (Optionl): Default value is empty. type is map
* public_route_table_tags (Optionl): Default value is empty. type is map
* private_route_table_tags (Optionl): Default value is empty. type is map
* database_route_table_tags (Optionl): Default value is empty. type is map
* is_peering_required (Optionl): Default value is true. type is bool
* acceptor_vpc_id (Optionl):  Default value is empty. default VPC ID would be taken. type is string
* vpc_peering_tags (Optionl): Default value is empty. type is map

## Outputs ##
* vpc_id : VPC ID
* public_subnet_ids: A list of 2 public subnet ids created
* private_subnet_ids: A list of 2 private subnet ids created
* database_subnet_ids: A list of 2 database subnet ids created
* igw_id: internet gateway created.