
terraform {
  required_version = ">= 0.12.31"

  required_providers {
    aws = {
      source : "hashicorp/aws",
      required_version : ">= 3.21.0"
    }
  }
}