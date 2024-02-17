variable "global_settings" {
  description = "Global settings object (see module README.md)"
}
variable "client_config" {
  description = "Client configuration object (see module README.md)."
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure Monitor Workspace instance"
  type        = string
}
variable "resource_group" {
  description = "Resource group object to deploy the Azure Monitor Workspace instance into"
}
variable "location" {
  description = "(Required) Specifies the supported Azure location where to create the resource. Changing this forces a new resource to be created."
  type        = string
}
variable "base_tags" {
  description = "Base tags for the resource to be inherited from the resource group."
  type        = bool
}

variable "private_endpoints" {
  default = {}
}

variable "settings" {
  description = "Settings for the Azure Monitor Workspace instance"
}

variable "private_dns" {
  description = "map of Private DNS objects"
  default     = {}
}
variable "vnets" {
  description = "Map of vnets objects"
  default     = {}
}
variable "virtual_subnets" {
  description = "Map of virtual_subnets objects"
  default     = {}
  nullable    = false
}