# This variable for resource group name
variable "resource_group_name" {
  default = "Rg1"
}

# This variable for tags.
variable "tags" {
  description = "Common tags"
  default = {
    environment = "Created by franklyn"
  }
}

# Variable for location
variable "location_rg" {
  default = "west us"
}

# Variable for Vnet
variable "Vnet_name" {
  default = "Vnet1"
}

# Variable for second location
variable "location_vnet" {
  default = "East us"
}