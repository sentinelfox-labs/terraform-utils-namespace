locals {
  prefix         = var.prefix
  name           = var.name
  environment    = var.environment
  workspace      = terraform.workspace
  with_workspace = var.with_workspace ? local.workspace : null

  namespace = {
    name_prefix = join("-", compact(
      local.prefix != null ?
      [local.prefix, local.with_workspace] :
      [
        local.prefix,
        local.name,
        local.environment,
        local.with_workspace
    ]))
    tags = merge({ TF_Workspace = local.workspace }, var.tags)
  }
}
