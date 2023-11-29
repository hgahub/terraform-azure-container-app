variable "location" {
  type = object({
    name       = string
    short_name = string
  })
  description = "The Azure Region where the Resource Group should exist."
}

variable "environment" {
  type        = string
  description = "Environment name."

  validation {
    condition     = contains(["dev", "test", "prod", "live"], var.environment)
    error_message = "Valid values for var: environment are (dev, test, prod, live)."
  }
}
