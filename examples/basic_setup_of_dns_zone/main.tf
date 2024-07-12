module "dns_zones" {
  source = "../../"

  # Resurce configuration
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  lock_level_value        = var.lock_level_value

  # DNS zone configuragtion
  dns_zones = var.dns_zones

  # Additional Configurations
  tags = var.tags
}