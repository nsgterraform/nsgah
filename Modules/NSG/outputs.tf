output "nsgidcreated" {
    value = azurerm_network_security_group.self.id
  
}
output "name" {
  value = azurerm_network_security_group.self.name
}