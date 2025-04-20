resource "azurerm_resource_group" "app-netnotify" {
  name     = "${var.application_name}-${var.environment}-rg"
  location = var.primary_region
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage_account_name}st"
  resource_group_name      = azurerm_resource_group.app-netnotify.name
  location                 = var.primary_region
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
