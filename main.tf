resource "azurerm_resource_group" "app-netnotify" {
  name     = "${var.application_name}-${var.environment}-rg"
  location = var.primary_region
}

resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
  lower   = true
}

resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage_account_name}${random_string.suffix.result}st"
  resource_group_name      = azurerm_resource_group.app-netnotify.name
  location                 = var.primary_region
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.sa.id
  container_access_type = "private"
}

