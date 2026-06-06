output "kube_config" {
  value = azurerm_kubernetes_cluster.todo.kube_admin_config_raw
}
