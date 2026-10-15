provider "aws" {
  region = var.aws_region
}

# Production VPC Architecture for OrderFlow v2.3.0
resource "aws_vpc" "orderflow_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "orderflow-prod-vpc"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# Production Infrastructure Decision: Managed Kubernetes Cluster (EKS)
# Replacing single t2.micro EC2 instance with high-availability container orchestration
resource "aws_eks_cluster" "orderflow_cluster" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::123456789012:role/OrderFlowEKSClusterRole"

  vpc_config {
    subnet_ids = [
      "subnet-0123456789abcdef0",
      "subnet-0123456789abcdef1"
    ]
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  tags = {
    Name        = "orderflow-production-eks"
    Environment = var.environment
    Application = "OrderFlow"
    Version     = "v2.3.0"
  }
}

