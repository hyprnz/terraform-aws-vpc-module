# VPC with support for an EKS cluster

This example shows how to provide support to provision and run an EKS in a  separate VPC resource.

When supporting an EKS cluster, VPC and subnets resources are tagged so the Kubernetes control plane can identify resources that are scoped to EKS. EKS does do this automatically, but if not accounted for in the VPC module, all plans will show a difference and any apply will remove the Kubernetes tags.

Support for an EKS cluster requires the name of the cluster.

The examples uses a data source to identify the subnet ids.