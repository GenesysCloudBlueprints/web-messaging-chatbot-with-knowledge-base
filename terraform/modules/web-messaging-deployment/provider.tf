# terraform {
#   required_providers {
#     genesyscloud = {
#       source = "MyPureCloud/genesyscloud"
#     }
#   }
# }

terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

# provider "genesyscloud" {
#   sdk_debug = true
# }