# Terraform AZURE DNS Zone Module
[![Opstree Solutions][opstree_avatar]][opstree_homepage]<br/>[Opstree Solutions][opstree_homepage] 

  [opstree_homepage]: https://opstree.github.io/
  [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png


This Terraform module manages Azure DNS Zones and records. It provisions DNS zones, associated records (A, AAAA,CNAME, MX, TXT, SRV, PTR, CAA), and configures necessary settings.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
- [Use Cases](#UseCases)
- [Inputs](#inputs)
- [Outputs](#outputs)



## Introduction

Azure DNS is a hosting service for DNS domains that provides name resolution using Microsoft Azure infrastructure. This module provides an easy way to deploy and manage DNS zones and records using Terraform.

## Features

- Creates an Azure DNS Zone with specified configurations.
- Manages DNS records (A,AAAA, CNAME, MX, TXT, SRV, PTR, CAA).
- Supports configuring TTL for DNS records.
- Allows tagging of resources for better management.
- Provides easy-to-use variables for common configurations.

## Usage

```hcl
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
```


## Use Cases:

1- [Basic Setup of DNS Zone](https://github.com/OT-terraform-azure-modules/terraform-azure-dns-zone/tree/feature_0.0.1/examples/basic_setup_of_dns_zone)

  This example demonstrates a basic setup of an Azure DNS Zone using Terraform. It covers essential configurations to get started with DNS management in your Azure environment.

2- [Advanced Setup with Multiple Record Types](https://github.com/OT-terraform-azure-modules/terraform-azure-dns-zone/tree/feature_0.0.1/examples/setup_with_multiple_record_types)

 Explore this example to learn how to deploy an Azure DNS Zone with various DNS record types using Terraform. This setup ensures comprehensive DNS management for your Azure services.


## Inputs

### Basic Configuration

| Name                 | Description                                                       | Type     | Default | Required |
|----------------------|-------------------------------------------------------------------|----------|---------|----------|
| resource_group_name               | The name of the Resource Group                          | string   | n/a     | yes      |
| resource_group_location   | The Location for the Resource Group                         | string   | n/a     | yes      |
| dns_zones      | Name of the DNS zoen to be create                                     | map(string)   | n/a     | yes      |


### A Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_a_records            | List of A records to create            | map | {}     | no      |

### AAAA Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_aaaa_records            | List of AAAA records to create            | map | {}     | no      |


### CNAME Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_cname_records            | List of CNAME records to create            | map | {}     | no      |


### MX Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_mx_records            | List of MX records to create            | map | {}     | no      |


### TXT Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_txt_records            | List of TXT records to create            | map | {}     | no      |


### SRV Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_srv_records            | List of SRV Records to create            | map | {}     | no      |

### PTR Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_ptr_records            | List of PTR Records to create            | map | {}     | no      |

### CAA Records

| Name              | Description                                                       | Type   | Default | Required |
|-------------------|-------------------------------------------------------------------|--------|---------|----------|
| dns_caa_records            | List of CAA Records to create            | map | {}     | no      |


### Additional Configuration

| Name                           | Description                                                       | Type   | Default | Required |
|--------------------------------|-------------------------------------------------------------------|--------|---------|----------|
| tags      | Common Tags for the resources be be create                                     | map(string)   | Name of the resource     | no      |
| create_resource_group      | Whether to create the Resource Group                              | bool   | true     | no      |
| create_dns_zone      | Whether to create the DNS zone                              | bool   | true     | no      |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_zone_names"></a> dns_zone_names| The ID of the DNS zone. |
| <a name="output_dns_zone_ids"></a> dns_zone_ids| The Name of the DNS zone. |
| <a name="output_dns_a_records"></a> dns_a_records| The A record of the DNS zone. |
| <a name="output_dns_aaaa_records"></a> dns_aaaa_records| The AAAA records of the DNS zone. |
| <a name="output_dns_cname_records"></a> dns_cname_records | The CNAME records of the DNS zone. |
| <a name="output_dns_mx_records"></a> dns_mx_records | The MX records of the DNS zone. |
| <a name="output_dns_txt_records"></a> dns_txt_records | The TXT records of the DNS zone. |
| <a name="output_srv_txt_records"></a> dns_srv_records | The SRV records of the DNS zone. |
| <a name="output_dns_PTR_records"></a> dns_PTR_records | The PTR records of the DNS zone. |
| <a name="output_caa_PTR_records"></a> dns_caa_records | The CAA records of the DNS zone. |
| <a name="output_dns_ns_records"></a> dns_ns_records | The NS records of the DNS zone. |


## Contributors
- [Kuldeep Singh](https://www.linkedin.com/in/kuldeep-singh-9702b879/) 
- [Rajat Vats](https://www.linkedin.com/in/rajat-vats-32042aa9/)