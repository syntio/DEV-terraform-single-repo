locals {
  env = "dev"
}

provider "google" {
  project = var.project
}

module "go_function" {
  source = "../../../modules/go_function"
  project = var.project
  env = local.env
  component = var.component
  deploy_cf = var.deploy_cf
  service_account_email = var.service_account_email
  context_duration_seconds = var.context_duration_seconds
  file_window_seconds = var.file_window_seconds
  num_of_go_routines = var.num_of_go_routines
  max_outstanding_messages = var.max_outstanding_messages
  max_extension_seconds = var.max_extension_seconds
  instance_nr = var.instance_nr

  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object

  function_entry_point = var.function_entry_point
  function_memory = var.function_memory
  function_region = var.function_region
  function_source_url = var.function_source_url
  function_go_runtime = var.function_go_runtime
  function_timeout = var.function_timeout
}