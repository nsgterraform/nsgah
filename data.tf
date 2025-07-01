data "azurerm_resource_group" "rgname" {
  name = "nsgtest"
 
}
data "azurerm_virtual_network" "vnetfetch" {
  name                = "vnet-nsg"              # <-- Replace with your VNet name
  resource_group_name = "nsgtest"    # <-- Replace with your Resource Group
}

# Fetch existing Subnet within that VNet
data "azurerm_subnet" "subnetfetch" {
  name                 = "app-subnet"                        # <-- Replace with your Subnet name
  virtual_network_name = data.azurerm_virtual_network.vnetfetch.name
  resource_group_name  = data.azurerm_virtual_network.vnetfetch.resource_group_name
}
