locals {
  env = "prod"
}

provider "google" {
  project = var.project
}

module "vpc" {
  source  = "../../../modules/vpc"
  project = var.project
  component = var.component
  env     = local.env
  # Using default value
  # region  = "europe-west3"
}

module "http_server" {
  source  = "../../../modules/http_server"
  project = var.project
  component = var.component
  network = module.vpc.network
  subnet  = module.vpc.subnet
  env     = local.env
}

module "firewall" {
  source  = "../../../modules/firewall"
  project = var.project
  component = var.component
  network = module.vpc.network
  subnet  = module.vpc.subnet
}
