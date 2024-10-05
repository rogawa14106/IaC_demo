# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  type        = string
  description = "AWS region for all resources."

  default = "ap-northeast-1"
}

variable "project_name" {
  type        = string
  description = "Name of the example project."

  default = "tf-tutor"
}

variable "secret_key" {
  type        = string
  sensitive   = true
  description = "The secret key of hello module"
}
