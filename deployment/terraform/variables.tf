variable "aws_region" {
  type        = string
  description = "Target deployment region"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Target environment name"
  default     = "production"
}

variable "cluster_name" {
  type        = string
  description = "Kubernetes cluster name for OrderFlow"
  default     = "orderflow-prod-cluster"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key provided dynamically via CI/CD secrets"
  sensitive   = true
}

