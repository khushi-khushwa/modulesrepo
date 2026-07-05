terraform {
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "module-rg"
    storage_account_name = "modulestg"
    container_name = "modulecontainer"
    key="terraform.tfstate"
  }


}

provider "azurerm" {
  features {
  }
} 
