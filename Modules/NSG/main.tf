resource "azurerm_network_security_group" "self" {
  name = var.nsgname
  location = var.location
  resource_group_name = var.rgnsgname
}
resource "azurerm_subnet_network_security_group_association" "subnetassoc" {
  count = length(var.subnetids)
  subnet_id                 = var.subnetids[count.index]
  network_security_group_id = azurerm_network_security_group.example.id
}

resource "azurerm_network_security_rule" "example" {
  for_each = {for ir in var.inboundrules : ir.priority => ir}
  name                        = lookup(each.value,"name",null)
  priority                    = lookup(each.value,each.key)
  direction                   = "Inbound"
  access                      = lookup(each.value,"access","Allow")
  protocol                    = lookup(each.value,"protocol","Tcp")
  source_port_range           = lookup(each.value,"source_port_range",null)
  destination_port_range      = lookup(each.value,"destination_port_range",null)
  source_address_prefix       = lookup(each.value,"source_address_prefix",null)
  destination_address_prefix  = lookup(each.value,"destination_address_prefix",null)
  resource_group_name         = var.rgnsgname
  network_security_group_name = azurerm_network_security_group.self.name
}
