resource "google_cloudfunctions_function" "go_function" {
  count = var.deploy_cf ? 1 : 0
  name = var.component
  runtime = var.function_go_runtime
  available_memory_mb = tonumber(var.function_memory)
  timeout = tonumber(var.function_timeout)
  entry_point = var.function_entry_point
  trigger_http = var.function_trigger_http
  ingress_settings = var.function_ingress_settings
  service_account_email = var.service_account_email
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  region = var.function_region

  environment_variables = {
    CONTEXT_DURATION_SECONDS = var.context_duration_seconds
    FILE_WINDOW_SECONDS = var.file_window_seconds
    NUM_OF_GOROUTINES = var.num_of_go_routines
    MAX_OUTSTANDING_MESSAGES = var.max_outstanding_messages
    MAX_EXTENSION_SECONDS = var.max_extension_seconds
    INSTANCE_NR = var.instance_nr
  }
}