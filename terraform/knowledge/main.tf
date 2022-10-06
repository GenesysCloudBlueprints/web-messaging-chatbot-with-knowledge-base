module "devops_knowledgebase" {
    source = "./modules/knowledgebases"
}

module "devops_knowledge_documents" {
    source = "./modules/knowledge-documents"
    knowledgebase_id = module.devops_knowledgebase.knowledgebase_id
}