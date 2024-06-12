variable location {
  type        = string
  default     = "East US"
}
variable environment {
  type = string
  default = "workflow"
}
variable "vnet_subnet_id" {
  type        = string
  description = "Subnet ID to deploy the AKS cluster into."
}