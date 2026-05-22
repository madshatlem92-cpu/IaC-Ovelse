terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "mads-backend-rg"
    storage_account_name  = "madsbackendsa1234"
    container_name        = "tfstate"
    key                   = "rg-${terraform.workspace}.tfstate"
  }
}

provider "azurerm" {
  features {}
}

variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}
