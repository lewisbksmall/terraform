# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.defaultResource
  location = var.loc
}

resource "azurerm_virtual_network" "vn"{
    name   = var.defaultVN
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    address_space = var.space
}

# this is now an "input" value 
variable "loc" {
  type    = string
  default = "westus2"
}

# this is a resource group variable

variable "defaultResource" {

type = string
default = "myTFResourceGroup"
}

variable "defaultVN" {
    type = string
    default = "virtualVN"
}

variable "space"{
    type = list(string)
    default= ["10.0.0.0/16"]
}
