# Namespace

## Usage

### Example:

```hcl
module "namespace" {
  source = "../.."

  name        = "sf"
  environment = "v001"
  # with_workspace = true

  tags = {
    source = "sentinelfox-labs"
  }
}
```

### Output

```hcl
namespace = {
  "name_prefix" = "sf-v001-staging"
  "tags" = {
    "TF_Workspace" = "staging"
    "source" = "sentinelfox-labs"
  }
}
```
