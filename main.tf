import {

  to = azurerm_network_security_group.testnsg
  id = "/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/networkSecurityGroups/test-nsg"
}



 
/*resource "azurerm_network_security_group" "testnsg" {
  name                = "test-nsg"
  location            = "East US"
  resource_group_name = data.azurerm_resource_group.rgname.name
}*/
 
resource "azurerm_network_security_rule" "customrule" {
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
  network_security_group_name = data.azurerm_network_security_group.nsgname.id
}