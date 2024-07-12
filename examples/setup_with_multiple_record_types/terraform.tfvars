resource_group_name     = "demo"
resource_group_location = "Central India"
lock_level_value        = ""

dns_zones = "otexample.com"

dns_a_records = {
  record1 = {
    name    = "www"
    ttl     = 3600
    records = ["192.168.1.1"]
  }
  record2 = {
    name    = "api"
    ttl     = 300
    records = ["192.168.1.2"]
  }
}

dns_aaaa_records = {
  record1 = {
    name    = "www"
    ttl     = 3600
    records = ["2001:0db8:85a3:0000:0000:8a2e:0370:7334"]
  }
  record2 = {
    name    = "api"
    ttl     = 300
    records = ["2001:0db8:85a3:0000:0000:8a2e:0370:7335"]
  }
}

dns_cname_records = {
  record1 = {
    name   = "alias"
    ttl    = 3600
    record = "example.com"
  }
}

dns_mx_records = {
  "record1" = {
    name = "mail"
    ttl  = 3600
    record = {
      preference = 10
      exchange   = "mail.example.com"
    }
  },
  "record2" = {
    name = "mail2"
    ttl  = 3600
    record = {
      preference = 20
      exchange   = "mail2.example.com"
    }
  }
}

dns_txt_records = {
  "record1" = {
    name    = "example1"
    ttl     = 3600
    records = ["v=spf1 include:example.com ~all"]
  },
  "record2" = {
    name    = "example2"
    ttl     = 3600
    records = ["v=spf1 include:anotherexample.com ~all"]
  }
}

dns_ns_records = {
  record1 = {
    name    = "ns1"
    ttl     = 3600
    records = ["ns1.example.com", "ns2.example.com"]
  }
}

dns_caa_records = {
  "record1" = {
    name = "example1"
    ttl  = 3600
    record = {
      flags = 0
      tag   = "issue"
      value = "ca.example.com"
    }
  },
  "record2" = {
    name = "example2"
    ttl  = 3600
    record = {
      flags = 0
      tag   = "issuewild"
      value = "ca.example.com"
    }
  }
}

dns_srv_records = {
  "record1" = {
    name = "_sip1._tcp"
    ttl  = 3600
    record = {
      priority = 10
      weight   = 5
      port     = 5060
      target   = "sip.example.com"
    }
  },
  "record2" = {
    name = "_sip2._tcp"
    ttl  = 3600
    record = {
      priority = 20
      weight   = 10
      port     = 5060
      target   = "sip2.example.com"
    }
  }
}

dns_ptr_records = {
  "record1" = {
    name    = "1.2.0.192.in-addr.arpa"
    ttl     = 3600
    records = ["example.com"]
  },
  "record2" = {
    name    = "2.2.0.192.in-addr.arpa"
    ttl     = 3600
    records = ["example2.com"]
  }
}


tags = {
  provider = "terraform",
  owner    = "opstree"
}