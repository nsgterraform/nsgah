data "azurerm_resource_group" "rgname" {
  name = "nsgtest"
}
data "azurerm_network_security_group" "nsgname" {
  name                = "test-nsg"
  resource_group_name = data.azurerm_resource_group.rgname.name
}
