output "name_prefix" {
  description = "The derived name prefix for resource names"
  value       = local.namespace.name_prefix
}

output "tags" {
  description = "Default tags for all resources were created with this module."
  value       = local.namespace.tags
}
