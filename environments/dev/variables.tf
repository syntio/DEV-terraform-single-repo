variable "project" {
    type = string
    description = "GCP Project ID"
}

variable "bucket-suffix" {
    type = string
    description = "Suffix appended to project id to get a unique storage name"
}