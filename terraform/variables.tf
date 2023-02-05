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
