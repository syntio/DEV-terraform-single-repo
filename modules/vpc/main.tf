module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 2.4"

  project_id   = var.project
  network_name = "${var.env}-${var.component}"

  subnets = [
    {
      subnet_name   = "${var.env}-${var.component}-subnet-01"
      subnet_ip     = "10.${var.env == "dev" ? 10 : 20}.10.0/24"
      subnet_region = var.region
    },
  ]

  secondary_ranges = {
    "${var.env}-${var.component}-subnet-01" = []
  }
}
