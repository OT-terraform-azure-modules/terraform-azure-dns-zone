module "resource-group" {
  for_each = var.create_resource_group ? { rg1 = var.resource_group_name } : {}
  #local.resource_groups
  source                  = "OT-terraform-azure-modules/resource-group/azure"
  version                 = "0.0.1"
  resource_group_name     = each.value
  resource_group_location = var.resource_group_location
  lock_level_value        = var.lock_level_value
  tag_map = merge(
    {
      "Name" = each.value
    },
    var.tags,
  )
}


resource "azurerm_dns_zone" "default" {
  for_each            = var.create_dns_zone ? { dns_zone1 = var.dns_zones } : {}
  name                = each.value
  resource_group_name = var.resource_group_name
  depends_on          = [module.resource-group]

  tags = merge(
    {
      "Name" = each.value
    },
    var.tags,
  )
}

resource "azurerm_dns_a_record" "default" {
  for_each            = var.dns_a_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl
  records             = each.value.records

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags,
  )
}

resource "azurerm_dns_aaaa_record" "default" {
  for_each            = var.dns_aaaa_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl
  records             = each.value.records

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags,
  )
}

resource "azurerm_dns_cname_record" "default" {
  for_each            = var.dns_cname_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl
  record              = each.value.record

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags,
  )
}

resource "azurerm_dns_mx_record" "default" {
  for_each            = var.dns_mx_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl

  record {
    preference = each.value.record.preference
    exchange   = each.value.record.exchange
  }

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags
  )
}

resource "azurerm_dns_txt_record" "default" {
  for_each            = var.dns_txt_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl

  dynamic "record" {
    for_each = each.value.records
    content {
      value = record.value
    }
  }

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags
  )
}

resource "azurerm_dns_ns_record" "default" {
  for_each            = var.dns_ns_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl
  records             = each.value.records

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags,
  )
}

resource "azurerm_dns_caa_record" "default" {
  for_each            = var.dns_caa_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl

  record {
    flags = each.value.record.flags
    tag   = each.value.record.tag
    value = each.value.record.value
  }

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags
  )
}

resource "azurerm_dns_srv_record" "default" {
  for_each            = var.dns_srv_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl

  record {
    priority = each.value.record.priority
    weight   = each.value.record.weight
    port     = each.value.record.port
    target   = each.value.record.target
  }

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags
  )
}

resource "azurerm_dns_ptr_record" "default" {
  for_each            = var.dns_ptr_records
  name                = each.value.name
  resource_group_name = var.resource_group_name
  zone_name           = var.create_dns_zone ? azurerm_dns_zone.default["dns_zone1"].name : var.dns_zones
  ttl                 = each.value.ttl
  records             = each.value.records

  tags = merge(
    {
      "Name" = each.value.name
    },
    var.tags
  )
}
