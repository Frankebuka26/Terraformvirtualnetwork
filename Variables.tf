variable "resource_group_name" {
  type    = string
  default = "Rg1"
}

variable "tags" {
  type        = map(string)
  description = "Common tags"
  default = {
    environment = "Created by franklyn"
  }
}