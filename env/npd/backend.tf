terraform {
  backend "azurerm" {
    resource_group_name  = "BellzandTech-npd-rg"
    storage_account_name = "azuredevenvcz1g6cst"
    container_name       = "tfstate"
    key                  = "BellzandTech-npd"
  }
}
