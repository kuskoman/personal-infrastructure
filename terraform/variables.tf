variable "main_domain" {
  description = "Main domain using for DNS configuration"
  type        = string
}

variable "do_token" {
  description = "DigitalOcean API Token"
  type        = string
}

variable "terraform_cloud_org" {
  description = "Terraform Cloud organization name"
  type        = string
}

variable "terraform_cloud_workspace" {
  description = "Terraform Cloud workspace name"
  type        = string
}

variable "cloudflare_api_token" {
  description = "Cloudflare API Token"
  type        = string
}

variable "ingress_lb_ip" {
  description = "IP address of the ingress load balancer"
  type        = string
}
