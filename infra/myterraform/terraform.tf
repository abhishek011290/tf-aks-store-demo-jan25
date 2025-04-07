terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.14.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "vmimages"
    storage_account_name = "tfbackedforworkshop"
    container_name       = "workshop-state"
    key                  = "workshop.tfstate"
  }
  required_version = ">= 1.1.0"
}
