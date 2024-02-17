# Workaround for Azure Monitor Workspace naming convention not being supported by AzureCAF Provider
resource "azurecaf_name" "this" {
  name          = "amw-${var.settings.name}"
  prefixes      = var.global_settings.prefixes
  resource_type = "azurerm_monitor_data_collection_endpoint"
  random_length = var.global_settings.random_length
  clean_input   = true
  passthrough   = var.global_settings.passthrough
  use_slug      = false #var.global_settings.use_slug
}

resource "azurerm_monitor_workspace" "this" {
  name                          = azurecaf_name.this.result
  resource_group_name           = local.resource_group_name
  location                      = local.location
  public_network_access_enabled = try(var.settings.public_network_access_enabled, null)
  tags                          = local.tags
}