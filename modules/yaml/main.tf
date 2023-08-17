data "http" "yaml" {
  for_each = toset(var.files)
  url      = each.key
}

locals {
  results_raw = flatten([for id, content in data.http.yaml : split("---\n", trimspace(content.body))])
  results     = [for content in local.results_raw : trimspace(content) if trimspace(content) != ""]
}
