/*resource "azurerm_network_security_group" "indnsg" {
  name                = "testingnsg"
  location            = var.location
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
  source_port_range           = try(each.value.source_port_range,null)
  destination_port_range      = try(each.value.destination_port_range,null)
  source_address_prefix       = try(each.value.source_address_prefix,null)
  destination_address_prefix  = try(each.value.destination_address_prefix,null)
  source_port_ranges           = try(each.value.source_port_ranges,null)
  destination_port_ranges      = try(each.value.destination_port_ranges,null)
  source_address_prefixes       = try(each.value.source_address_prefixes,null)
  destination_address_prefixes  = try(each.value.destination_address_prefixes,null)
  resource_group_name         = data.azurerm_resource_group.rgname.name
  network_security_group_name = azurerm_network_security_group.indnsg.name
}


# Associate NSG to Subnet
resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = data.azurerm_subnet.subnetfetch.id
  network_security_group_id = azurerm_network_security_group.indnsg.id
}*/

module "nsgmodule" {
  source = "./Modules/NSG"
  testnsgrules = var.testnsgrules
  location = var.location
  resource_group_name = data.azurerm_resource_group.rgname.name

}
