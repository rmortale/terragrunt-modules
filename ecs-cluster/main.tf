terraform {
  # Live modules pin exact Terraform version; generic modules let consumers pin the version.
  # The latest version of Terragrunt (v0.19.0 and above) requires Terraform 0.12.0 or above.
  required_version = "= 0.12.17"

  # Live modules pin exact provider version; generic modules let consumers pin the version.
  required_providers {
    aws = "= 2.40.0"
  }
}

module "ecs" {
  source = "terraform-aws-modules/ecs/aws"

  name = "my-ecs"
}
