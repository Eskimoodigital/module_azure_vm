variable "name" {
  description = "Custom name for VM"
  type        = string
}

variable "cidr" {
  description = "The subnet_id for the VM"
  type        = string
  default     = ""
}

variable "ip_name" {
  description = "Custom name for ipconfig"
  type        = string
  default     = ""
}

variable "publicip_name" {
  description = "Custom name for publicip"
  type        = string
  default     = ""
}

variable "nic_name" {
  description = "Custom name for nic"
  type        = string
  default     = ""
}

variable "rg_name" {
  description = "Custom name for rg"
  type        = string
  default     = ""
}

#
