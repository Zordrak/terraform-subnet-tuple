variable "availability_zones" {
  type        = "list"
  default     = []
  description = "List of Availability Zones for Subnets and Autoscaling Groups"
}

variable "aws_region" {
  type        = "string"
  description = "The AWS region"
}

variable "name" {
  type        = "string"
  description = "Microservice name. Synonymous with Role and Nodetype. Used to populate Role and Nodetype tag as well as define resource names and Name tags"
}

variable "cidrs" {
  type        = "list"
  default     = []
  description = "List of CIDR blocks for microservice subnets"
}

variable "map_public_ip_on_launch" {
  type        = "string"
  default     = "0"
  description = "Specify true to indicate that instances should be assigned a public IP address"
}

variable "route_tables" {
  type        = "list"
  default     = []
  description = "A list of route tables to iteratively associate to each subnet. Specify one route table for it to be shared with all subnets, or one route table for each subnet"
}

variable "tags" {
  type = "map"

  default = {
    Environment = ""
    Application = ""
    Tier        = ""
  }

  description = "Tags to apply to all components within the microservice"
}

variable "vpc_id" {
  type        = "string"
  description = "Parent VPC ID"
}
