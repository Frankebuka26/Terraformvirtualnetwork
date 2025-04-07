terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# resource name points to tag for resource name.
resource "azurerm_resource_group" "Rg1" {
  name     = var.resource_group_name
  location = "West US"
  tags     = var.tags
  # Var.tags was used as format to point to varibale for tags.
}

resource "azurerm_virtual_network" "Vnet1" {
  name                = "Vnet1"
  location            = "East US" # Virtual network location is different from resource location.
  resource_group_name = azurerm_resource_group.Rg1.name
  address_space       = ["10.123.0.0/16"] # Subnet mask range defined.

  tags = var.tags
}