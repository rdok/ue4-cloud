variable "name" {
  default     = "ue4-cloud_develop"
  type        = string
  description = "Use ue4-cloud_{hash_id} template"
}

variable "region" {
  default = "eu-west-1"
  type    = string
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}
