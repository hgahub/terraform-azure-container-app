
locals {
  name         = lower(format("dumbi-%s-management-app", var.default_location.short_name))
}
