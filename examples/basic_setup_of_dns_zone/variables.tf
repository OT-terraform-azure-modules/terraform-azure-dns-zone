/*------------------Resource group variable -----------*/
variable "create_resource_group" {
  description = "Whether to create the resource group."
  type        = bool
  default     = true
}

variable "resource_group_name" {
  type        = string
  description = "(Required) Name of Resource Group"
}

variable "resource_group_location" {
  type        = string
  description = "(Required) Location where we want to implement code"
}

variable "lock_level_value" {
  type        = string
  default     = "CanNotDelete"
  description = "(Required) Specifies the Level to be used for this Lock. Possible values are `Empty (no lock)`, `CanNotDelete` and `ReadOnly`. Changing this forces a new resource to be created"
}


/*------------------DNS Zone variable -----------*/

variable "create_dns_zone" {
  description = "Whether to create the resource group."
  type        = bool
  default     = true
}

variable "dns_zones" {
  description = "A map of DNS zone names to create."
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Map of Tags those we want to Add"
}

