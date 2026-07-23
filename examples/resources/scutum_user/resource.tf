resource "scutum_user" "ops_oncall" {
  username = "ops-oncall"
  password = var.ops_oncall_password
  roles    = ["developer"]
}

variable "ops_oncall_password" {
  description = "Initial password for the ops-oncall account"
  sensitive   = true
}
