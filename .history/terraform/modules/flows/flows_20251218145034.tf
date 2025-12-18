resource "genesyscloud_flow" "deploy_devops_bot" {
  filepath = "${path.module}/DevOpsKnowledgeChatBot_v2-0.yaml"
  file_content_hash = filesha256("${path.module}/DevOpsKnowledgeChatBot_v2-0.yaml")
  substitutions = {
    flow_name             = "DevOpsKnowledgeChatBot"
    default_language      = "en-us"
  }
}

resource "genesyscloud_flow" "deploy_devops_inbound" {
  filepath = "${path.module}/DevOpsKnowledgeInbound_v1-0.yaml"
  file_content_hash = filesha256("${path.module}/DevOpsKnowledgeInbound_v1-0.yaml")
  substitutions = {
    flow_name           = "DevOpsKnowledgeInbound"
    default_language    = "en-us"
  }
  depends_on = [
    genesyscloud_flow.deploy_devops_bot
  ]
}

output "inbound_flow_id" {
  value = genesyscloud_flow.deploy_devops_inbound.id
}