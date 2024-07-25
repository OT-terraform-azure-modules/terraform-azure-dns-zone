output "dns_zone_ids" {
  description = "ID of the DNS zones."
  value       = module.dns_zones.dns_zone_ids
}

output "dns_zone_names" {
  description = "Name of the DNS zones."
  value       = module.dns_zones.dns_zone_names
}

