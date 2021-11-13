terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "terraformtest94"

    workspaces {
      name = "terraform-project"
    }
  }
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = ">= 3.58.0"
      }
  }
}

locals {
  project_name = "terraform_learn"
}