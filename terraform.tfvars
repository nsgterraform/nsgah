location = "eastus"
nsgname = "rednsg"

testnsgrules1 = {
   allow6 = {
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
  allow9 = {
     name                        = "allow-90ssh"
     priority                    = 120
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_ranges           = ["80","22"]
     destination_port_ranges     = ["22","80"]
     source_address_prefix       = "*"
     destination_address_prefix  = "*"

  }
  allow989 = {
     name                        = "allow-90ssh"
     priority                    = 140
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_ranges           = ["80","22"]
     destination_port_ranges     = ["22","80","78"]
     source_address_prefix       = "*"
     destination_address_prefix  = "*"

  }
}