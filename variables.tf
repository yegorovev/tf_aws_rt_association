variable "vpc_id" {
  description = "VPC ID"
  type        = string
  nullable    = false
}

variable "rt_name" {
  description = "Route table name"
  type        = string
  nullable    = false
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = null
  nullable    = true
}

variable "gateway_id" {
  description = "Gateway id"
  type        = string
  default     = null
  nullable    = true
}

variable "subnet_zone" {
  description = "Subnet az"
  type        = string
  default     = null
  nullable    = true
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = null
  nullable    = true
}
