resource "azurerm_network_security_group" "indnsg" {
  name                = "testingnsg"
  location            = data.azurerm_resource_group.rgname.location
  resource_group_name = data.azurerm_resource_group.rgname.name
}

# NSG Rules - Modular/Separate
resource "azurerm_network_security_rule" "somensgs" {
  for_each = var.testnsgrules
  name                        = each.value.name
  priority                    = each.value.priority
  direction                   = each.value.direction
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_port_range           = each.value.source_port_range
  destination_port_range      = each.value.destination_port_range
  source_address_prefix       = each.value.source_address_prefix
  destination_address_prefix  = each.value.destination_address_prefix
  resource_group_name         = data.azurerm_resource_group.rgname.name
  network_security_group_name = azurerm_network_security_group.indnsg.name
}


# Associate NSG to Subnet
resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = data.azurerm_subnet.subnetfetch.id
  network_security_group_id = azurerm_network_security_group.indnsg.id
}