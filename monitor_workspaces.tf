module "monitor_workspaces" {
  source   = "./modules/monitoring/monitor_workspace"
  for_each = local.shared_services.monitor_workspaces

  global_settings     = local.global_settings
  client_config       = local.client_config
  resource_group      = local.combined_objects_resource_groups[try(each.value.resource_group.lz_key, local.client_config.landingzone_key)][try(each.value.resource_group_key, each.value.resource_group.key)]
  resource_group_name = can(each.value.resource_group.name) || can(each.value.resource_group_name) ? try(each.value.resource_group.name, each.value.resource_group_name) : null
  location            = lookup(each.value, "region", null) == null ? local.combined_objects_resource_groups[try(each.value.resource_group.lz_key, local.client_config.landingzone_key)][try(each.value.resource_group.key, each.value.resource_group_key)].location : local.global_settings.regions[each.value.region]
  settings            = each.value
  base_tags           = local.global_settings.inherit_tags
  private_endpoints   = try(each.value.private_endpoints, {})
  private_dns         = local.combined_objects_private_dns
  vnets               = local.combined_objects_networking
  virtual_subnets     = local.combined_objects_virtual_subnets
}
output "monitor_workspaces" {
  value = module.monitor_workspaces
}