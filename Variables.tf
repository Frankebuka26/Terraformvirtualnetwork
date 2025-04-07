# This variable for resource group name
variable "resource_group_name" {
  type    = string
  default = "Rg1"
}

# This variable for tags.
variable "tags" {
  type        = map(string)
  description = "Common tags"
  default = {
    environment = "Created by franklyn"
  }
}