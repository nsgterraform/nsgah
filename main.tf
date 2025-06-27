
import {
 to = azurerm_network_security_group.oribnsg
 id = "/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/networkSecurityGroups/oribnsg"
}

resource "azurerm_network_security_group" "oribnsg" {
  name                = "oribnsg"
  location            = "East US"
  resource_group_name = data.azurerm_resource_group.rgname.name

  dynamic "security_rule" {
    for_each = { for rule in var.orib_securityrule : rule.name => rule }

    content {
      name                         = security_rule.value.name
      priority                     = security_rule.value.priority
      direction                    = security_rule.value.direction
      access                       = security_rule.value.access
      protocol                     = security_rule.value.protocol

      source_port_range            = try(security_rule.value.source_port_range, null)
      source_port_ranges           = length(try(security_rule.value.source_port_ranges, [])) > 0 ? security_rule.value.source_port_ranges : null

      destination_port_range       = try(security_rule.value.destination_port_range, null)
      destination_port_ranges      = length(try(security_rule.value.destination_port_ranges, [])) > 0 ? security_rule.value.destination_port_ranges : null

      source_address_prefix        = try(security_rule.value.source_address_prefix, null)
      source_address_prefixes      = length(try(security_rule.value.source_address_prefixes, [])) > 0 ? security_rule.value.source_address_prefixes : null

      destination_address_prefix   = try(security_rule.value.destination_address_prefix, null)
      destination_address_prefixes = length(try(security_rule.value.destination_address_prefixes, [])) > 0 ? security_rule.value.destination_address_prefixes : null

      destination_application_security_group_ids = length(try(security_rule.value.destination_application_security_group_ids, [])) > 0 ? security_rule.value.destination_application_security_group_ids : null
      source_application_security_group_ids      = length(try(security_rule.value.source_application_security_group_ids, [])) > 0 ? security_rule.value.source_application_security_group_ids : null
    }
  }

  tags = {}
}