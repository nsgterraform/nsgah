location = "eastus"
testnsgrules = [
   {
     name                        = "allow-ssh"
     priority                    = 100
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_range           = "*"
     destination_port_range      = "22"
     source_address_prefix       = "*"
     destination_address_prefix  = "*"

  },
   {
     name                        = "allow-90ssh"
     priority                    = 120
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_ranges           = ["80","22"]
     destination_port_ranges     = ["22","80"]
     source_address_prefix       = "*"
     destination_address_prefix  = "*"

  },
  {
     name                        = "allow-900ssh"
     priority                    = 130
     direction                   = "Inbound"
     access                      = "Allow"
     protocol                    = "Tcp"
     source_port_ranges           = ["80","22","67"]
     destination_port_ranges     = ["22","80","33"]
     source_address_prefix       = "*"
     destination_address_prefix  = "*"

  },
]
