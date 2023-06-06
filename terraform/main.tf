module "devops_knowledgebase" {
    source = "./modules/knowledgebases"
}

module "devops_knowledge_documents" {
    source = "./modules/knowledge-documents"
    knowledgebase_id = module.devops_knowledgebase.knowledgebase_id
}

module "flows" {
    depends_on = [
      module.devops_knowledgebase
    ]
    source = "./modules/flows"
}

module "webmessaging_deployment" {
    source = "./modules/web-messaging-deployment"
    flowId = module.flows.inbound_flow_id
}

module "webmessaging_page" {
    depends_on                             = [module.webmessaging_deployment]
    source                                 = "./modules/web-messaging-page"
    genesyscloud_scripting_env             = var.genesyscloud_scripting_env
    genesyscloud_scripting_url             = var.genesyscloud_scripting_url
    genesyscloud_webmessaging_deploymentid = module.webmessaging_deployment.webmessenger_deploymentid
}