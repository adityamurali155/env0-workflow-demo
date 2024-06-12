output aks_subnet_id {
  value       = azurerm_subnet.az-subnet.id
  description = "Subnet ID to deploy AKS cluster into"
}
output "vnet_id" {
    value = azurerm_virtual_network.az-vnet.id
    description = "Virtual Network ID"
}