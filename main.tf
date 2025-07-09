

module "nsgtestmodule" {
  source = "./Modules/NSG"
  nsgname = var.nsgname
  location = var.location
  rgnsgname = data.azurerm_resource_group.rgname
  subnetids = data.azurerm_subnet.subnetfetch
  inboundrules = var.inboundrules
}
