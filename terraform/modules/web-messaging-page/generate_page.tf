resource "local_file" "messenger_html" {
    content = templatefile("${path.module}/templates/index.html.tftpl",
    {   
        genesyscloud_scripting_env = "${var.genesyscloud_scripting_env}",
        genesyscloud_scripting_url = "${var.genesyscloud_scripting_url}",
        genesyscloud_webmessaging_deploymentid = "${var.genesyscloud_webmessaging_deploymentid}" 
    })
    filename = "${path.module}/../../../web/index.html"
}

data "local_file" "html_data" {
    depends_on = [
      local_file.messenger_html
    ]
    filename = "${path.module}/../../../web/index.html"
}

resource "local_file" "messenger_server" {
    content = templatefile("${path.module}/templates/server.py.tftpl",
    {   
        generated_html = "${replace(replace(data.local_file.html_data.content, "\"", "\\\""), "\n", "")}",
    })
    filename = "${path.module}/../../../web/server.py"
}