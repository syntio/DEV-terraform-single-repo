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
variable "network" {
  type = string
  description = "Name of network"
}
variable "subnet" {
  type = string
  description = "Subnet Name"
}
variable "location" {
  type = string
  description = "Location of resource being deployed"
  default = "EU"
}
variable "region" {
  type = string
  description = "Region of resource being deployed"
  default = "europe-west3"
}
variable "zone" {
  type = string
  description = "Zone of resource being deployed"
  default = "europe-west3-c"
}
variable "instance" {
  type    = map
  default = {
    dev  = "f1-micro"
    prod = "n2-standard-2"
  }
}