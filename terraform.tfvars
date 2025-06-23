security_rules = [
    {
      name                         = "AllowSSH"
      priority                     = 500
      direction                    = "Inbound"
      access                       = "Allow"
      protocol                     = "Tcp"
      source_port_range            = "*"
      destination_port_range       = "*"
      source_address_prefix        = "*"
    },
]