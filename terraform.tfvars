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
  /*{
    name                         = "AllowSSH2"
    priority                     = 530
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "Tcp"
    source_port_ranges           = ["120", "30", "40"]
    destination_port_ranges      = ["99", "22", "50"]
    source_address_prefixes      = ["192.168.20.0/24", "192.168.30.0/24"]
    destination_address_prefixes = ["192.168.40.0/24", "192.168.50.0/24"] # fixed
  },*/
  {
    name                         = "AllowSSH5"
    priority                     = 580
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "Tcp"
    source_port_range            = "*"
    destination_port_ranges      = ["99", "22", "50"]
    source_address_prefixes      = ["192.168.20.0/24", "192.168.30.0/24"]
    destination_address_prefix   = "*" # fixed
  }
]

/*---------------Maps---------------*/
nsgsecurity_rules = {
    AllowSSH1 = {
      name                        = "AllowAnyCustom8080Inbound"
      priority                    =  100
      direction                   = "Inbound"
      access                      = "Allow"
      protocol                    = "Tcp"
      source_port_range           = "*"
      destination_port_range      = "8080"
      source_address_prefix       = "*"
      destination_address_prefix  = "*"
    }
    /*AllowSSH2 = {
      name                         = "allow443"
      priority                     = 110
      direction                    = "Inbound"
      access                       = "Allow"
      protocol                     = "Tcp"
      source_port_range            = "*"
      destination_port_ranges      = ["80", "8080", "443"]
      source_address_prefixes      = ["10.0.0.0/24","10.2.0.0/24"]
      destination_address_prefix   = "*"
    }*/
    AllowSSH5 = {
      name                         = "allow90"
      priority                     = 120
      direction                    = "Inbound"
      access                       = "Allow"
      protocol                     = "Tcp"
      source_port_range            = "*"
      destination_port_ranges      = ["80","67","90"]
      source_address_prefix        = "*"
      destination_address_prefixes   = ["10.0.0.0/24","10.3.0.0/24"]
    }
}
