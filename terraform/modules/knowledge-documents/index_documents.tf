resource "genesyscloud_knowledge_document" "devops_document_1" {
    knowledge_base_id = var.knowledgebase_id
    published = false
    knowledge_document {
        title = "What is hardlink and softlink?"
        visible = true
        alternatives {
            phrase = "Define hardlink and softlink"
            autocomplete = true
        }
        alternatives {
            phrase = "What is hardlink?"
            autocomplete = true
        }
        alternatives {
            phrase = "What is softlink?"
            autocomplete = true
        }
        alternatives {
            phrase = "Hardlink and softlink"
            autocomplete = true
        }
    }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_1" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_1.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "A soft link is an actual link to the original file that can cross the file system, allows you to link between directories, and has different inode numbers or file permission to the original file."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "A softlink looks like this: $ SRE softlink.file"
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "A hard link is a mirror copy of the original file that can’t cross the file system boundaries, can’t link directories, and has the same inode number and permissions as the original."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "Example: $ SRE hardlink.file"
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
    }
  }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_1_2" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_1.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "This variation is different"
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
    }
  }
}

resource "genesyscloud_knowledge_document" "devops_document_2" {
    knowledge_base_id = var.knowledgebase_id
    published = false
    knowledge_document {
        title = "What is SLO"
        visible = true
        alternatives {
            phrase = "What is an SLO?"
            autocomplete = true
        }
        alternatives {
            phrase = "What is a Service Level Objective?"
            autocomplete = true
        }
        alternatives {
            phrase = "Service Level Objective"
            autocomplete = true
        }
    }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_2" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_2.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "An SLO or Service Level Objective is basically a key element of a service-level agreement (SLA) between a service provider and a customer that is agreed upon to measure the performance of service providers and are formed as a way of avoiding disputes. Between two parties."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "SLO can be a specific measurable characteristic of SLA like availability, throughput, frequency, response time, or quality. These SLOs togethe define the expected service between the provider and the customer while varying depending on the service’s urgency, resources, and budget. SLOs provide a quantitative means to define the level of service a customer can expect from a provider."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
    }
  }
}

resource "genesyscloud_knowledge_document" "devops_document_3" {
    knowledge_base_id = var.knowledgebase_id
    published = false
    knowledge_document {
        title = "What are error budgets?"
        visible = true
        alternatives {
            phrase = "error budget"
            autocomplete = true
        }
        alternatives {
            phrase = "What is an error budget?"
            autocomplete = true
        }
    }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_3" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_3.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "Error budget defines the maximum amount of time a technical system can fail without contractual consequences."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "Error budget encourages the teams to minimize real incidents and maximize innovation by taking risks within acceptable limits."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
    }
  }
}

resource "genesyscloud_knowledge_document" "devops_document_4" {
    knowledge_base_id = var.knowledgebase_id
    published = false
    knowledge_document {
        title = "What are Service Level Indicators"
        visible = true
        alternatives {
            phrase = "What is SLI?"
            autocomplete = true
        }
        alternatives {
            phrase = "Service Level Indicators"
            autocomplete = true
        }
    }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_4" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_4.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "A Service Level Indicator (SLI) is a measure of the service level provided by a service provider to a customer. SLIs form the basis of Service Level Objectives (SLOs), which in turn form the basis of Service Level Agreements (SLAs). An SLI can also be called an SLA metric."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "Although every system is different in the services provided, common SLIs are used pretty often. Common SLIs include latency, throughput, availability, and error rate; others include durability (in storage systems), end-to-end latency (for complex data processing systems, especially pipelines), and correctness."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
    }
  }
}

resource "genesyscloud_knowledge_document" "devops_document_5" {
    knowledge_base_id = var.knowledgebase_id
    published = false
    knowledge_document {
        title = "What are Data Structures?"
        visible = true
        alternatives {
            phrase = "Explain Data Structures"
            autocomplete = true
        }
        alternatives {
            phrase = "Data Structures"
            autocomplete = true
        }
    }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_5" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_5.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "Data structure is a data organization, management, and storage format that enables efficient access and modification. More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data."
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
          blocks {
            type = "Text"
            text {
              text      = "The types of data structures are listed below:"
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
      blocks {
        type = "UnorderedList"
        list {
          blocks {
            type = "ListItem"
            blocks {
                type = "Text"
                text {
                  text      = "Linear: Arrays, lists"
                  hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
                }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "Tree: Binary, heaps"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "Graphs: Decision, Acyclic, etc"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
        }
      }
    }
  }
}

resource "genesyscloud_knowledge_document" "devops_document_6" {
    knowledge_base_id = var.knowledgebase_id
    published = false
    knowledge_document {
        title = "Enlist all the Linux signals you are aware of"
        visible = true
        alternatives {
            phrase = "List the Linux signals"
            autocomplete = true
        }
        alternatives {
            phrase = "Linux signals"
            autocomplete = true
        }
        alternatives {
            phrase = "What are the Linux signals?"
            autocomplete = true
        }
    }
}

resource "genesyscloud_knowledge_document_variation" "devops_variation_6" {
  knowledge_base_id     = var.knowledgebase_id
  knowledge_document_id = genesyscloud_knowledge_document.devops_document_6.id
  published             = true
  knowledge_document_variation {
    body {
      blocks {
        type = "Paragraph"
        paragraph {
          blocks {
            type = "Text"
            text {
              text      = "The common Linux signals are mentioned below:"
              hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
            }
          }
        }
      }
      blocks {
        type = "UnorderedList"
        list {
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
                text {
                  text      = "SIGHUP"
                  hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
                }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "SIGINT"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "SIGQUIT"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "SIGFPE"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "SIGKILL"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "SIGALRM"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
          blocks {
            type = "ListItem"
            blocks {
              type = "Text"
              text {
                text      = "SIGTERM"
                hyperlink = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
              }
            }
          }
        }
      }
    }
  }
}