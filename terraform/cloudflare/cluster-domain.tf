resource "cloudflare_zone" "main_domain_zone" {
  zone = var.main_domain
}

resource "cloudflare_zone" "argo_domain_zone" {
  zone = "argo.${var.main_domain}"
}

resource "cloudflare_record" "cluster_main_domain" {
  zone_id = cloudflare_zone.main_domain_zone.id
  name    = var.main_domain
  type    = "A"
  value   = var.ingress_lb_ip
  ttl     = 1
}

resource "cloudflare_record" "cluster_argo_domain" {
  zone_id = cloudflare_zone.argo_domain_zone.id
  name    = "argo.${var.main_domain}"
  type    = "A"
  value   = var.ingress_lb_ip
  ttl     = 1
}
