module "kubernetes_main_cluster" {
  source = "./digitalocean-kubernetes"
  main_domain = var.main_domain
  do_token = var.do_token
}