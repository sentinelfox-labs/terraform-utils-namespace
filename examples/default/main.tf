
module "namespace" {
  source = "../.."

  name        = "sf"
  environment = "v001"
  # with_workspace = true

  tags = {
    source = "sentinelfox-labs"
  }
}

output "namespace" {
  value = module.namespace
}
