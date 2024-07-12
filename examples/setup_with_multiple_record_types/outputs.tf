output "dns_zone_ids" {
  description = "ID of the DNS zones."
  value       = module.dns_zones.dns_zone_ids
}

output "dns_zone_names" {
  description = "Name of the DNS zones."
  value       = module.dns_zones.dns_zone_names
}

output "dns_a_records" {
  description = "The A records in the DNS zone."
  value       = module.dns_zones.dns_a_records
}

output "dns_aaaa_records" {
  description = "The AAAA records in the DNS zone."
  value       = module.dns_zones.dns_aaaa_records
}

output "dns_cname_records" {
  description = "The CNAME records in the DNS zone."
  value       = module.dns_zones.dns_cname_records
}

output "dns_mx_records" {
  description = "The MX records in the DNS zone."
  value       = module.dns_zones.dns_mx_records
}

output "dns_txt_records" {
  description = "The TXT records in the DNS zone."
  value       = module.dns_zones.dns_txt_records
}

output "dns_srv_records" {
  description = "The SRV records in the DNS zone."
  value       = module.dns_zones.dns_srv_records
}

output "dns_ptr_records" {
  description = "The PTR records in the DNS zone."
  value       = module.dns_zones.dns_ptr_records
}

output "dns_caa_records" {
  description = "The CAA records in the DNS zone."
  value       = module.dns_zones.dns_caa_records
}


output "dns_ns_records" {
  description = "The NS records in the DNS zone."
  value       = module.dns_zones.dns_ns_records
}
