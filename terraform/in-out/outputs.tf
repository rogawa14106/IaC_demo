# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.elb_dns_name
}


output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "randome_lb_id" {
  description = "ID of elb"
  value       = random_string.lb_id
}

output "lb_url" {
  description = "URL of LB"
  value       = "https://${module.elb_http.elb_dns_name}"
}

output "web_srv_count" {
  description = "Number of web servers provisioned"
  value       = length(module.ec2_instances.instance_ids)
}

output "db_username" {
  value       = aws_db_instance.database.username
  description = "db admin username"
  sensitive   = true
}

output "db_password" {
  value       = aws_db_instance.database.password
  description = "db admin password"
  sensitive   = true
}
