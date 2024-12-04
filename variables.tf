variable "region" {
  default = "us-west-1"
}

variable "subnets" {
  type = any
}

variable "inbound_rule" {
  type = any
}