variable "prefix" {
  type        = string
  default     = null
  description = "Direct Name Prefix for this full IaC."
}

variable "name" {
  type        = string
  description = "This Infrastructure Name prefix starts with this given name."
}

variable "environment" {
  type        = string
  default     = null
  description = <<EOF
  Environment can be defferentiate the resources names with versions like:
  ```
  sf-v001-*
  ```
  EOF
}

variable "with_workspace" {
  type        = bool
  default     = true
  description = <<EOF
  Workspace will handle the multiple Infrastructure like `dev`, `staging`, `prod`
  Select workspace:
  ```
  terraform workspace new staging
  ```
  Resource names will starts with:
  ```
  sf-v001-staging-*
  ```
  EOF
}

variable "tags" {
  type        = map(string)
  description = "Default Tags for this Infrastructure."
  default     = {}
}
