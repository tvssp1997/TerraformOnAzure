variable "business_division" {
  description = "Business Division for the infrastructure"
  type = string
  default = "dev"
}

variable "environment" {
  description = "environment variable"
  type = string
  default = "dev"
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type = string
  default = "rg_test"
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type = string
  default = "East US"
}