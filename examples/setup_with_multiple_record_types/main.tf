module "dns_zones" {
  source = "../../"

  # Resurce configuration
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  lock_level_value        = var.lock_level_value

  # DNS zone configuragtion
  dns_zones = var.dns_zones

  # DNS zone Records
  dns_a_records     = var.dns_a_records
  dns_aaaa_records  = var.dns_aaaa_records
  dns_cname_records = var.dns_cname_records
  dns_mx_records    = var.dns_mx_records
  dns_txt_records   = var.dns_txt_records
  dns_ns_records    = var.dns_ns_records
  dns_caa_records   = var.dns_caa_records
  dns_srv_records   = var.dns_srv_records
  dns_ptr_records   = var.dns_ptr_records

  # Additional Configurations
  tags = var.tags
}