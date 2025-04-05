## project ##
variable project_name {
  type = string
}

variable environment {
  type = string
}

variable common_tags {
  type = map 
}

## VPC ##

variable cidr_block {
  default = "10.0.0.0/16"
}

variable instance_tenancy {
  default = "default"
}

variable enable_dns_hostnames {
  default = "true"
}

variable vpc_tags {
  type = map 
  default = {}
}

## IGW ##

variable igw_tags {
  type = map 
  default = {}
}

## public subnet ##

variable  public_subnet_cidrs {
  type = list 
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "please provide 2 valid public subnet cidrs"
  }
}

variable public_subnet_cidrs_tags {
  type = map 
  default = {}
}

## private subnet ##

variable  private_subnet_cidrs {
  type = list 
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "please provide 2 valid private subnet cidrs"
  }
}

variable private_subnet_cidrs_tags {
  type = map 
  default = {}
}

## database subnet ##

variable  database_subnet_cidrs {
  type = list 
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "please provide 2 valid database subnet cidrs"
  }
}

variable database_subnet_cidrs_tags {
  type = map 
  default = {}
}

variable db_subnet_group_tags {
  type = map 
  default = {}
}


## nat gateway ##

variable nat_gateway_tags {
  type = map
  default = {}
}

## public route table ##

variable public_route_table_tags {
  type = map
  default = {}
}

## private route table ##

variable private_route_table_tags {
  type = map
  default = {}
}

## private route table ##

variable database_route_table_tags {
  type = map
  default = {}
}

## peering ##

variable is_peering_required {
  type = bool
  default = true
} 
 
variable acceptor_vpc_id {
  type = string
  default = "" 
}

variable vpc_peering_tags {
  type = map
  default = {}
}

