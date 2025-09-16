# terraform/variables.tf  (replace the whole file with this if easier)

variable "location"        { type = string }
variable "rg_name"         { type = string }
variable "vnet_name"       { type = string }
variable "subnet_name"     { type = string }
variable "vm_name"         { type = string }
variable "vm_size"         { type = string }
variable "admin_username"  { type = string }

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "create_public_ip" {
  description = "Attach a public IP (for quick RDP). Consider false for prod."
  type        = bool
  default     = true
}

variable "rdp_allowed_cidr" {
  description = "CIDR allowed to RDP (3389). Use your IP/32."
  type        = string
}
