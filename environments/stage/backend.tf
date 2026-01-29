terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfenv_stagebackend"
    container_name      = "tfstate"
    key                 = "stage.tfstate"
  }
}

provider "azurerm" {
  features {}
}
