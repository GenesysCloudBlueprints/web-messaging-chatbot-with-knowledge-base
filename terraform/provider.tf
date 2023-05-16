terraform {
  required_providers {
    genesyscloud = {
      source = "genesys.com/mypurecloud/genesyscloud"
      version = "0.1.0"
    }
  }
}
# terraform {
#   required_providers {
#     genesyscloud = {
#       source = "mypurecloud/genesyscloud"
#     }
#   }
# }

# provider "genesyscloud" {
#   sdk_debug = true
# }