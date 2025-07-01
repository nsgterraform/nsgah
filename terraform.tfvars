location = "eastus"
testnsgrules = {
  allow80 = {
     name                        = "allow-ssh"
     priority                    = 100
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_range           = "*"
     destination_port_range      = "22"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"

  }
}
