terraform {
  backend "azurerm" {
    resource_group_name  = "mads-backend-rg"
    storage_account_name = "madsbackendstate123"   # ditt navn
    container_name       = "tfstate"
    key                  = "prod.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
# test
