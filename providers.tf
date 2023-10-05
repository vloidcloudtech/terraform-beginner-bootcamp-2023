terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.18.1"
    }
  }
#cloud{
#  organization = "vloid"
#
 # workspaces {
#    name = "terra-house-1"
#  }
#}
}

provider "aws" {
  # Configuration options for AWS provider
}

provider "random" {
  # Configuration options for random provider
}
