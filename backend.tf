terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}

  required_version = ">= 0.12"

}
