import {

  to = azurerm_network_security_group.testnsg
  id = "/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/networkSecurityGroups/test-nsg"
}



 
resource "azurerm_network_security_group" "testnsg" {
  name                = "test-nsg"
  location            = "East US"
  resource_group_name = data.azurerm_resource_group.rgname.name
  security_rule       = [
            {
                access                                     = "Allow"
                description                                = null
                destination_address_prefix                 = "*"
                destination_address_prefixes               = []
                destination_application_security_group_ids = []
                destination_port_range                     = "8080"
                destination_port_ranges                    = []
                direction                                  = "Inbound"
                name                                       = "AllowAnyCustom8080Inbound"
                priority                                   = 200
                protocol                                   = "*"
                source_address_prefix                      = "*"
                source_address_prefixes                    = []
                source_application_security_group_ids      = []
                source_port_range                          = "*"
                source_port_ranges                         = []
            },
        ]
}
 
/*resource "azurerm_network_security_rule" "customrule" {
  name                        = "AllowAnyCustom8080Inbound"
  priority                    = 200
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = data.azurerm_resource_group.rgname.name
  network_security_group_name = azurerm_network_security_group.testnsg.id
}*/