terraform {
  required_providers {
    genesyscloud = {
      source = "genesys.com/mypurecloud/genesyscloud"
      version = "0.1.0"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}