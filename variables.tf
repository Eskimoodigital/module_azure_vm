variable "name" {
  description = "Custom name for VM"
  type        = string
}

variable "cidr" {
  description = "The subnet_id for the VM"
  type        = string
  default     = ""
}

variable "ipname" {
  description = "Custom name for publicip"
  type        = string
}

variable "nicname" {
  description = "Custom name for nic"
  type        = string
}

variable "rgname" {
  description = "Custom name for rg"
  type        = string
}

#
