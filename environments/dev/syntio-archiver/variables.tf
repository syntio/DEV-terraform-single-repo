variable "env" {
  type = string
  description = "Component environment"
}
variable "project" {
  type = string
  description = "GCP Project ID"
}
variable "component" {
  type = string
  description = "Name of the component"
}
variable "region" {
  type = string
  description = "Region of resource being deployed"
}
variable "deploy_cf" {
  type = bool
}
variable "function_trigger_http" {
  type = bool
}
variable "function_ingress_settings"{
  type = string
}
variable "function_entry_point" {
  type = string
}
variable "function_source_url" {
  type = string
}
variable "function_memory" {
  type = string
}
variable "function_region" {
  type = string
}
variable "function_timeout" {
  type = string
}
variable "function_go_runtime" {
  type = string
}
variable "source_archive_bucket"{
  type = string
}
variable "source_archive_object"{
  type = string
}
variable "service_account_email" {
  type = string
}

# Function environment variables.
variable "context_duration_seconds" {}
variable "file_window_seconds" {}
variable "num_of_go_routines" {}
variable "max_outstanding_messages" {}
variable "max_extension_seconds" {}
variable "instance_nr" {}
