resource "azurerm_network_security_rule" "somensgs" {
  for_each = var.testnsgrules1
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
  resource_group_name         = var.resource_group_name
  network_security_group_name = var.network_security_group_name
}
