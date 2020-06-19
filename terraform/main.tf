provider "apigee" {
  org          = var.apigee_organization
  access_token = var.apigee_token
}

terraform {
  backend "azurerm" {}

  required_providers {
    apigee = "~> 0.0"
    archive = "~> 1.3"
  }
}

module "unattended-access-poc" {
  source             = "github.com/NHSDigital/api-platform-service-module"
  name               = "unattended-access-poc"
  path               = "unattended-access-poc"
  apigee_environment = var.apigee_environment
  proxy_type         = "sandbox"
  namespace          = var.namespace
  make_api_product   = false
  api_product_display_name = ""
  api_product_description  = ""
}