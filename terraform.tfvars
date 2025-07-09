location = "eastus"
nsgname = "samnsg"
inboundrules = [
   {
      name = "allow700"
      priority = 1200
      access = "Allow"
      protocol = "Tcp"
      source_port_range = "*"
      source_address_prefix = "*"
      destination_port_ranges = ["3389"]
      destination_address_prefix = "*"
   }
]