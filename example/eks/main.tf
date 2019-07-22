module "example_vpc_eks" {
  source = "../../"

  name            = "example-env"
  cidr            = "10.0.0.0/16"
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  public_subnets  = ["10.0.211.0/24", "10.0.212.0/24", "10.0.213.0/24"]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = "${map("Environment", "env")}"

  eks_cluster_name = "eks-example"
}

output "vpc_id" {
  value = "${module.example_vpc_eks.vpc_id}"
}
