variable "main_domain" {
  description = "Main domain using for DNS configuration"
  type        = string
}

variable "ingress_lb_ip" {
    description = "IP address of the ingress load balancer"
    type        = string
}

variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
}