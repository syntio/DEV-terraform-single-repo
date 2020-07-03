terraform {
  backend "gcs" {
    bucket = "${var.project}${var.bucket-suffix}"
    prefix = "env/prod"
  }
}
