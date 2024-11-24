terraform {
  backend "s3" {
    bucket  = "hextris-bucket"
    key     = "state-file"
    region  = "eu-west-2"
    encrypt = true
  }

  required_version = ">=1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.6"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}