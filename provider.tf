# Configure the Azure provider, you can have many
# if you use azurerm provider, it's source is hashicorp/azurerm
# short for registry.terraform.io/hashicorp/azurerm


terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.12.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.9.0"
}
# configures the provider

provider "azurerm" {
  subscription_id = var.SUB_ID #Terraform knows which account to bill
  features {
    key_vault {
      purge_soft_delete_on_destroy = false   #If Terraform deletes a Key Vault, it won't permanently "purge" it, allowing you to recover it
    }
  }
}
provider "azuread" {
  
}

