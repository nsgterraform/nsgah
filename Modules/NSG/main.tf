
resource "azurerm_network_security_group" "mynsg" {
  name                = "mynsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  dynamic "security_rule" {
    for_each = var.testnsgrules
    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = try(security_rule.value.source_port_range,null)
      destination_port_range     = try(security_rule.value.destination_port_range,null)
      source_address_prefix      = try(security_rule.value.source_address_prefix,null)
      destination_address_prefix = try(security_rule.value.destination_address_prefix,null)
      source_port_ranges          = try(security_rule.value.source_port_ranges,null)
      destination_port_ranges     = try(security_rule.value.destination_port_ranges,null)
      source_address_prefixes     = try(security_rule.value.source_address_prefixes,null)
      destination_address_prefixes = try(security_rule.value.destination_address_prefixes,null)
    }
  }
}