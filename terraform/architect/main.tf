module "flows" {
    source = "./modules/flows"
}

data "genesyscloud_flow" "devops_inbound_flow" {
  depends_on = [
    module.flows,
  ]
  name = "DevOpsKnowledgeInbound"
}

module "webmessaging_deployment" {
    source = "./modules/web-messaging-deployment"
    flowId = data.genesyscloud_flow.devops_inbound_flow.id
}

module "webmessaging_page" {
  depends_on                             = [module.webmessaging_deployment]
  source                                 = "./modules/web-messaging-page"
  genesyscloud_scripting_env             = var.genesyscloud_scripting_env
  genesyscloud_scripting_url             = var.genesyscloud_scripting_url
  genesyscloud_webmessaging_deploymentid = module.webmessaging_deployment.webmessenger_deploymentid
}