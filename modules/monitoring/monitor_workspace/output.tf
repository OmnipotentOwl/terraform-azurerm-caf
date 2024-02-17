output "name" {
  description = "The name of the Azure Monitor Workspace instance"
  value       = azurerm_monitor_workspace.this.name
}
output "location" {
  description = "The location of the Azure Monitor Workspace instance"
  value       = azurerm_monitor_workspace.this.location
}
output "resource_group_name" {
  description = "The name of the resource group in which the Azure Monitor Workspace instance was created"
  value       = azurerm_monitor_workspace.this.resource_group_name
}
output "id" {
  description = "The ID of the Azure Monitor Workspace instance"
  value       = azurerm_monitor_workspace.this.id
}
# Outputs to be restored after provider version 3.85.0
# output "query_endpoint" {
#   description = "The query endpoint for the Azure Monitor Workspace instance"
#   value       = azurerm_monitor_workspace.this.query_endpoint
# }
# output "default_data_collection_endpoint_id" {
#   description = "The default data collection endpoint ID for the Azure Monitor Workspace instance"
#   value       = azurerm_monitor_workspace.this.default_data_collection_endpoint_id
# }
# output "default_data_collection_rule_id" {
#   description = "The default data collection rule ID for the Azure Monitor Workspace instance"
#   value       = azurerm_monitor_workspace.this.default_data_collection_rule_id
# }
output "tags" {
  description = "The tags assigned to the Azure Monitor Workspace instance"
  value       = azurerm_monitor_workspace.this.tags
}