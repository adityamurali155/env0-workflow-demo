variable "aks_cluster_fqdn" {
  type        = string
  description = "FQDN of the Kubernetes cluster."
}

variable "aks_client_certificate" {
  type        = string
  description = "Base64-encoded PEM-format client certificate for authenticating to the Kubernetes cluster."
  sensitive   = true
}

variable "aks_client_key" {
  type        = string
  description = "Base64-encoded PEM-format client key for authenticating to the Kubernetes cluster."
  sensitive   = true
}

variable "aks_cluster_ca_certificate" {
  type        = string
  description = "Base64-encoded PEM-format certificate authority bundle for authenticating to the Kubernetes cluster."
  sensitive   = true
}