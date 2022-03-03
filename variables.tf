//NAMING VARIABLES
variable "name" {
  description = "(Required) The name of the resource group. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the Resource Group exists. Changing this forces a new resource to be created."
}

variable "environment" {
  description = "(Required) Environment code. Used for Naming. (2 characters) "
  type        = string
}

// TAGGING VARIABLES
variable "description" {
  description = "(Required) Description of the resource"
  type        = string
}

variable "custom_tags" {
  description = "(Optional) Additional tags."
  type        = map
  default     = {}
}
