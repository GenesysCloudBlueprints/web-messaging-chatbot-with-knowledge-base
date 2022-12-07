terraform {
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}