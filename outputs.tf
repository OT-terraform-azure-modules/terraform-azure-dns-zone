output "dns_zone_ids" {
  description = "A map of the IDs of the DNS zones."
  value       = { for name, zone in azurerm_dns_zone.default : name => zone.id }
}

output "dns_zone_names" {
  description = "A map of the names of the DNS zones."
  value       = { for name, zone in azurerm_dns_zone.default : name => zone.name }
}

output "dns_a_records" {
  description = "The A records in the DNS zone."
  value = [for record in azurerm_dns_a_record.default : {
    name    = record.name
    ttl     = record.ttl
    records = record.records
  }]
}

output "dns_aaaa_records" {
  description = "The AAAA records in the DNS zone."
  value = [for record in azurerm_dns_aaaa_record.default : {
    name    = record.name
    ttl     = record.ttl
    records = record.records
  }]
}

output "dns_cname_records" {
  description = "The CNAME records in the DNS zone."
  value = [for record in azurerm_dns_cname_record.default : {
    name   = record.name
    ttl    = record.ttl
    record = record.record
  }]
}

output "dns_mx_records" {
  description = "The MX records in the DNS zone."
  value = [for record in azurerm_dns_mx_record.default : {
    name = record.name
    ttl  = record.ttl
    records = [for rec in record.record : {
      preference = rec.preference
      exchange   = rec.exchange
    }]
  }]
}

output "dns_txt_records" {
  description = "The TXT records in the DNS zone."
  value = [for record in azurerm_dns_txt_record.default : {
    name    = record.name
    ttl     = record.ttl
    records = record.record
  }]
}

output "dns_srv_records" {
  description = "The SRV records in the DNS zone."
  value = [for record in azurerm_dns_srv_record.default : {
    name = record.name
    ttl  = record.ttl
    records = [for rec in record.record : {
      priority = rec.priority
      weight   = rec.weight
      port     = rec.port
      target   = rec.target
    }]
  }]
}

output "dns_ptr_records" {
  description = "The PTR records in the DNS zone."
  value = [for record in azurerm_dns_ptr_record.default : {
    name    = record.name
    ttl     = record.ttl
    records = record.records
  }]
}


output "dns_caa_records" {
  description = "The CAA records in the DNS zone."
  value = [for record in azurerm_dns_caa_record.default : {
    name = record.name
    ttl  = record.ttl
    records = [for rec in record.record : {
      flags = rec.flags
      tag   = rec.tag
      value = rec.value
    }]
  }]
}

output "dns_ns_records" {
  description = "The NS records in the DNS zone."
  value = [for record in azurerm_dns_ns_record.default : {
    name    = record.name
    ttl     = record.ttl
    records = record.records
  }]
}