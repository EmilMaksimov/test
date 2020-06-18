variable "swarm_managers_instance_type" {
  description = "Swarm manager instance type"
  default = "n1-standard-2"
}

variable "swarm_workers_instance_type" {
  description = "Swarm workers instance type"
  default = "n1-standard-2"
}

variable "swarm_managers" {
  description = "Swarm manager count"
  default = "1"
}

variable "swarm_workers" {
  description = "Swarm workers count"
  default = "2"
}

variable "region" {
  description = "Google Compute Platform region to launch servers."
  default     = "europe-west1"
}
variable "project" {
  description = "Google Compute Platform project name."
  default     = "emil-openshift"
}
variable "zone" {
  type = "string"
  default = "europe-west1-b"
  description = "The zone to provision into"
}
variable "image_name" {
  default = "cos-cloud/cos-stable-81-12871-148-0"
}

variable "ssh_user" {
  default = "emaksimov"
}

variable "ssh_pub_key_file" {
  default = "~/.ssh/id_rsa.pub"
}
