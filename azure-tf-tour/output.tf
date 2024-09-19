# return a value returned by our module
output "rg_id" {
  value = azurerm_resource_group.rg.id
  description = "ID of the resource group"
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
  description = "Name of virtual network"
}

output "vnet_address" {
  value = azurerm_virtual_network.vnet.address_space
  description = "Address Space of the virtual network"
}
