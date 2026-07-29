terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.0"
        }
    }
    backend "azurerm" {}
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg-pipeline" {
    name = rg-pipeline
    location = "East US"
}