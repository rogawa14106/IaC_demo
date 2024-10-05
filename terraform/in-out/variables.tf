# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Variable declarations
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "vpc_cidr_block" {
  description = "cider block of vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_count" {
  description = "Number of instance to provision"
  type        = number
  default     = 2
}

variable "enable_vpn_gateway" {
  description = "enable a vpn gateway in your vpc"
  type        = bool
  default     = false
}

variable "private_subnet_count" {
  description = "Number of private subnet"
  type        = number
  default     = 2
}

variable "private_subnet_cidr_blocks" {
  description = ""
  type        = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
    "10.0.109.0/24",
    "10.0.110.0/24",
  ]
}

variable "public_subnet_count" {
  description = "Number of public subnet"
  type        = number
  default     = 2
}

variable "public_subnet_cidr_blocks" {
  description = ""
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
    "10.0.9.0/24",
    "10.0.10.0/24",
  ]
}
