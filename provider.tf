terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "192c8ca3-9a0e-45a3-acf7-e131e5856927"
  resource_provider_registrations = "none"
}