
terraform {
  required_version = "~> 0.11"
}

# Pin the `aws` provider
# https://www.terraform.io/docs/configuration/providers.html
provider "aws" {
  version = "~> 2.0"
}