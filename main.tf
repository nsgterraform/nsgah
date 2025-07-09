

module "nsgtestmodule" {
  source = "./Modules/NSG"
  nsgname = var.nsgname
  location = var.location
  rgnsgname = data.azurerm_resource_group.rgname.name
  subnetids = ["/subscriptions/192c8ca3-9a0e-45a3-acf7-e131e5856927/resourceGroups/nsgtest/providers/Microsoft.Network/virtualNetworks/vnet-nsg/subnets/db-subnet"]
  inboundrules = var.inboundrules
}
