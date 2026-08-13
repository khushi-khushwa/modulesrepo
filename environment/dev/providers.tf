terraform {
  #  in the terraform block , required_providers block define the provider version want to use.
  # where to source the provider from
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "rg-tinki"
  #   storage_account_name = "khushistore"
  #   container_name = "modulecontainer"
  #   key="terraform.tfstate"
  # }


}

provider "azurerm" {
  features {
  }
}

# provider block configures a name provider , which is a plugin that lets terraform interact with cloud services.
/*
Define provider configurations in the root module of your Terraform configuration. 
Child modules receive their provider configurations from their parent modules, 
so we strongly recommend against defining provider blocks in child modules.
*/