variable "project" {
    type = string
    description = "GCP Project ID"
}

variable "prefix" {
    type = string
    description = "Folder name used for backend"
}

variable "bucket_suffix" {
    type = string
    description = "Suffix appended to project id to get a unique storage name"
}
