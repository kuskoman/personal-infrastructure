resource "cloudflare_zone" "main_domain_zone" {
  zone = var.main_domain
}
