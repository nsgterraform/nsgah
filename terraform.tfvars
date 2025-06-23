security_rules = [
  {
    name                        = "AllowSSH1"
    priority                    = 500
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "*"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
  },
  {
    name                         = "AllowSSH2"
    priority                     = 530
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "Tcp"
    source_port_ranges           = ["120", "30", "40"]
    destination_port_ranges      = ["99", "22", "50"]
    source_address_prefixes      = ["192.168.20.0/24", "192.168.30.0/24"]
    destination_address_prefixes = ["192.168.40.0/24", "192.168.50.0/24"] # fixed
  }
]