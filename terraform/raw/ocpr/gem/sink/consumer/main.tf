provider "aws" {
  version = "2.11.0"
  region  = "us-west-2"
}

terraform {
  backend "s3" {
    region = "us-west-2"
  }
}

provider "cerberus" {

}

data "cerberus_secret" "data360_secret" {
  sdb  = var.stage == "prod" ? var.cerberus_configs["prod-sdb"] : var.cerberus_configs["preprod-sdb"]
  path = var.stage == "prod" ? var.cerberus_configs["prod-sdp"] : var.cerberus_configs["preprod-sdp"]
}

provider "gem" {
  production    = var.stage == "prod" ? "true" : "false"
  client_id     = data.cerberus_secret.data360_secret.data.id
  client_secret = data.cerberus_secret.data360_secret.data.secret
}
