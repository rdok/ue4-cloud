variable "name" {
  default = "ue4-cloud"
  type = string
  description = "Used for tagging resources"
}

variable "region" {
  default = "eu-west-1"
  type = string
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  type = string
}
