data "cloudflare_zone" "main_domain_zone" {
  zone_id = var.cloudflare_zone_id
}

resource "cloudflare_record" "cluster_main_domain" {
  zone_id = data.cloudflare_zone.main_domain_zone.id
  name    = var.main_domain
  type    = "A"
  value   = var.ingress_lb_ip
  ttl     = 1
}

resource "cloudflare_record" "cluster_wildcard_domain" {
  zone_id = data.cloudflare_zone.main_domain_zone.id
  name    = "*.${var.main_domain}"
  type    = "A"
  value   = var.ingress_lb_ip
  ttl     = 1
}
