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

# resource name points to varibale for resource name.
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location_rg
  tags     = var.tags
  # Var.tags was used as format to point to varibale for tags.
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = var.Vnet1
  location            = var.location_vnet # Virtual network location is different from resource location.
  resource_group_name = azurerm_resource_group.Rg1.name
  address_space       = ["10.123.0.0/16"] # Subnet mask range defined.
  tags                = var.tags
  
}