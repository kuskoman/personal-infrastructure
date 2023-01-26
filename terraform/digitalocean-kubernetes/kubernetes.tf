resource "digitalocean_kubernetes_cluster" "main" {
  region  = "ams3"
  name    = var.cluster_name
  version = var.cluster_kubernetes_version

  node_pool {
    name       = "default"
    size       = var.cluster_instance_type
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5
  }
}