terraform {
  backend "azurerm" {
    resource_group_name  = "BellzandTech-prd-rg"
    storage_account_name = "azuredevenv3rxcavst"
    container_name       = "tfstate"
    key                  = "BellzandTech-prd"
  }
}
