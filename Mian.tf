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

resource "azurerm_resource_group" "Rg1" {
  name     = var.resource_group_name
  location = "West US"
  tags     = var.tags
}

resource "azurerm_virtual_network" "Vnet1" {
  name                = "Vnet1"
  location            = "East US"
  resource_group_name = azurerm_resource_group.Rg1.name
  address_space       = ["10.123.0.0/16"]

  tags = var.tags
}