variable "do_token" {
  description = "DigitalOcean API Token"
  type = string
}

variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
  default     = "main"
}

variable "main_domain" {
  description = "Cluster main domain"
  type        = string
}

variable "cluster_instance_type" {
  description = "Instance type used for cluster node pool"
  type        = string
  default     = "s-1vcpu-2gb"
}

variable "cluster_region" {
  description = "Region where cluster should be located"
  type        = string
  default     = "ams3"
}

variable "cluster_kubernetes_version" {
  description = "Version of kubernetes to be used with the cluster"
  type        = string
  default     = "1.25.4-do.0"
}
