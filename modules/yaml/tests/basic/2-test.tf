resource "test_assertions" "yaml" {
  component = "yaml"

  check "yamls_parsed" {
    description = "The result should be two sub-arrays of yaml maps"
    condition   = can(length(module.simple.yamls) > 2)
  }
}
