variable resource_groups {
    type = map(string)
    description = "The resource groups to deploy"
}

variable "prefix" {}

variable "region" {
    type = string
    default = "East US"
    description = "The Azure region to deploy resources"
    validation {
        condition = contains(["UK South", "UK West", "North Europe", "West Europe", "East US", "West US"], var.region)
        error_message = "Invalid Region"
    }
}

variable "tags" {
    type = map(any)
    description = "a map of tags"
}