/*import {

  to = azurerm_network_security_group.testnsga
  id = "/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/networkSecurityGroups/test-nsg1"
}*/
/*resource "azurerm_network_security_group" "testnsga" {
  name                = "test-nsg1"
  location            = "East US"
  resource_group_name = data.azurerm_resource_group.rgname.name
}*/

 
/*resource "azurerm_network_security_rule" "customrule" {
  name                        = "Allow500"
  priority                    = 500
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_network_security_group.testnsg.resource_group_name
  network_security_group_name = azurerm_network_security_group.testnsg.name
}*/

import {

  to = azurerm_network_security_group.nsgimp
  id = "/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/networkSecurityGroups/test-nsg2"
}

resource "azurerm_network_security_group" "nsgimp" {
  name                = "test-nsg2"
  location            = "East US"
  resource_group_name = data.azurerm_resource_group.rgname.name
  tags = local.nsgtags
  dynamic "security_rule" {
    for_each = var.security_rules
    content {
      name                       = security_rule.value.name
      priority                   = security_rule.value.priority
      direction                  = security_rule.value.direction
      access                     = security_rule.value.access
      protocol                   = security_rule.value.protocol
      source_port_range          = try(security_rule.value.source_port_range, null)
      source_port_ranges         = try(security_rule.value.source_port_ranges, null)
      destination_port_range     = try(security_rule.value.destination_port_range, null)
      destination_port_ranges    = try(security_rule.value.destination_port_ranges, null)
      source_address_prefix      = try(security_rule.value.source_address_prefix, null)
      source_address_prefixes    = try(security_rule.value.source_address_prefixes, null)
      destination_address_prefix = try(security_rule.value.destination_address_prefix, null)
      destination_address_prefixes = try(security_rule.value.destination_address_prefixes, null)
    }
  }
}

locals {
  nsgtags = {
    tagname = "mytag"
    appid = "ap30"
    live = "yes"
  }
}

/*----------------Using Maps---------------*/

import {
  to = azurerm_network_security_group.nsgivor
  id = "/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/networkSecurityGroups/test-nsg4"
}
resource "azurerm_network_security_group" "nsgivor" {
  name                = "test-nsg4"
  location            = "East US"
  resource_group_name = data.azurerm_resource_group.rgname.name

  dynamic "security_rule" {
    for_each = var.nsgsecurity_rules

    content {
      name                         = security_rule.value.name
      priority                     = security_rule.value.priority
      direction                    = security_rule.value.direction
      access                       = security_rule.value.access
      protocol                     = security_rule.value.protocol
      source_port_range            = try(security_rule.value.source_port_range, null)
      source_port_ranges           = try(security_rule.value.source_port_ranges, null)
      destination_port_range       = try(security_rule.value.destination_port_range, null)
      destination_port_ranges      = try(security_rule.value.destination_port_ranges, null)
      source_address_prefix        = try(security_rule.value.source_address_prefix, null)
      source_address_prefixes      = try(security_rule.value.source_address_prefixes, null)
      destination_address_prefix   = try(security_rule.value.destination_address_prefix, null)
      destination_address_prefixes = try(security_rule.value.destination_address_prefixes, null)
    }
  }
}
