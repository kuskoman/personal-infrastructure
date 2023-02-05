module "kubernetes_main_cluster" {
  source      = "./digitalocean-kubernetes"
  main_domain = var.main_domain
  do_token    = var.do_token
}

output "kubeconfig" {
  sensitive = true
  value     = module.kubernetes_main_cluster.kubeconfig
}

module "nameservers" {
  source               = "./cloudflare"
  main_domain          = var.main_domain
  cloudflare_api_token = var.cloudflare_api_token
  ingress_lb_ip        = var.ingress_lb_ip
}
