variable "name" {
  description = "Custom name for VM"
  type        = string
}

variable "cidr" {
  description = "The subnet_id for the VM"
  type        = string
  default     = ""
}
