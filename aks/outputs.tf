output "fqdn" {
  value     = azurerm_kubernetes_cluster.main.fqdn
  sensitive = true
}
output "client_certificate" {
  value     = azurerm_kubernetes_cluster.main.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.main.kube_config_raw
  sensitive = true
}
output "client_key" {
  value     = azurerm_kubernetes_cluster.main.client_key
  sensitive = true
}