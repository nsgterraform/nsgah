

module "nsgtestmodule" {
  source = "./Modules/NSG"
  nsgname = var.nsgname
  location = var.location
  rgnsgname = data.azurerm_resource_group.rgname.name
  subnetids = [data.azurerm_subnet.subnetfetch.id]
  inboundrules = var.inboundrules
}
