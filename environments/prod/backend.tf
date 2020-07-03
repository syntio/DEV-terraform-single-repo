terraform {
  backend "gcs" {
    bucket = "${var.project$var}.${var.bucket-suffix}"
    prefix = "env/prod"
  }
}
