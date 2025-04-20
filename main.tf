resource "azurerm_resource_group" "app-netnotify" {
  name     = "${var.application_name}-${var.environment}-rg"
  location = var.primary_region
}
