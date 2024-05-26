terraform {
  required_providers {
    port = {
      source = "port-labs/port"
      version = "0.0.9"
    }
  }
}

# provider "aws" {
#      version = "~> 4.0"
#      region = "us-east-1"
# }

provider "port" {
  client_id = "kwbw90Pl24ycohW8Pw8Rdr0g3gZz2IuZ"
  secret = "zMjqtlbSk5MFwN4myCCfKo6ixQXNMSfC2OkMbj2ZT1VhJooE61qWmuInENquF7W1"
}

locals {
  env  = var.env
  project = "Test"
  vpc_cidr = var.vpc_cidr
  account_id = data.aws_caller_identity.current.account_id
  region = var.region
  common_tags = tomap({
    "Env"= var.env,
    "Project"= "Test",
    "ManagedBy"="Terraform"
  })
}