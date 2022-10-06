resource "genesyscloud_knowledge_knowledgebase" "devops_knowledgebase_1" {
    name = "DevOpsKnowledgeBase"
    description = "Knowledge base for DevOps content"
    core_language = "en-US"
}

output "knowledgebase_id" {
  value = genesyscloud_knowledge_knowledgebase.devops_knowledgebase_1.id
}