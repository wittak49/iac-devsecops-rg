variable "resource_group_name"{
    description = "Name of Resource Group"
    type = string
    default = "iac-devops-rg"
}

variable "location" {
  description = "Region of Azure"
  type = string
  default = "East Us"
}