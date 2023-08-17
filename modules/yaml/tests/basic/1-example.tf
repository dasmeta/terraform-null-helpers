module "simple" {
  source = "../../"

  files = [
    "https://raw.githubusercontent.com/operator-framework/operator-lifecycle-manager/v0.25.0/deploy/upstream/quickstart/crds.yaml",
    "https://raw.githubusercontent.com/operator-framework/operator-lifecycle-manager/v0.25.0/deploy/upstream/quickstart/olm.yaml"
  ]
}
