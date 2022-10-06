resource "genesyscloud_knowledge_document" "devops_document_1" {
    knowledge_base_id = var.knowledgebase_id
    language_code = "en-US"
    knowledge_document {
        type = "Faq"
        external_url = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
        faq {
            question = "What is hardlink and softlink?"
            alternatives = [
                "Define hardlink and softlink",
                "Transmission Control Protocol?",
                "Describe TCP",
                "Describe Transmission Control Protocol",
            ]
            answer = "A soft link is an actual link to the original file that can cross the file system, allows you to link between directories, and has different inode numbers or file permission to the original file.  A softlink looks like this: $ SRE softlink.file  A hard link is a mirror copy of the original file that can’t cross the file system boundaries, can’t link directories, and has the same inode number and permissions as the original.  Example: $ SRE hardlink.file"
        }
    }
}

resource "genesyscloud_knowledge_document" "devops_document_2" {
    knowledge_base_id = var.knowledgebase_id
    language_code = "en-US"
    knowledge_document {
        type = "Faq"
        external_url = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
        faq {
            question = "What is SLO?"
            alternatives = [
                "What is an SLO?",
                "What is a Service Level Objective?",
            ]
            answer = "An SLO or Service Level Objective is basically a key element of a service-level agreement (SLA) between a service provider and a customer that is agreed upon to measure the performance of service providers and are formed as a way of avoiding disputes. Between two parties."
        }
    }
}

resource "genesyscloud_knowledge_document" "devops_document_3" {
    knowledge_base_id = var.knowledgebase_id
    language_code = "en-US"
    knowledge_document {
        type = "Faq"
        external_url = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
        faq {
            question = "What is error budget?"
            alternatives = [
                "error budgets",
                "error budget",
                "What are error budgets?",
                "What is an error budget?",
            ]
            answer = "Error budget defines the maximum amount of time a technical system can fail without contractual consequences."
        }
    }
}

resource "genesyscloud_knowledge_document" "devops_document_4" {
    knowledge_base_id = var.knowledgebase_id
    language_code = "en-US"
    knowledge_document {
        type = "Faq"
        external_url = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
        faq {
            question = "What are Service Level Indicators?"
            alternatives = [
                "What is Service Level Indicators?",
                "What is SLI?",
                "Service Level Indicators",
            ]
            answer = "A Service Level Indicator (SLI) is a measure of the service level provided by a service provider to a customer. SLIs form the basis of Service Level Objectives (SLOs), which in turn form the basis of Service Level Agreements (SLAs). An SLI can also be called an SLA metric."
        }
    }
}

resource "genesyscloud_knowledge_document" "devops_document_5" {
    knowledge_base_id = var.knowledgebase_id
    language_code = "en-US"
    knowledge_document {
        type = "Faq"
        external_url = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
        faq {
            question = "What are Data Structures?"
            alternatives = [
                "Explain Data Structures",
                "What are data structures?",
                "data structures",
            ]
            answer = "Data structure is a data organization, management, and storage format that enables efficient access and modification. More precisely, a data structure is a collection of data values, the relationships among them, and the functions or operations that can be applied to the data."
        }
    }
}

resource "genesyscloud_knowledge_document" "devops_document_6" {
    knowledge_base_id = var.knowledgebase_id
    language_code = "en-US"
    knowledge_document {
        type = "Faq"
        external_url = "https://www.devopsschool.com/blog/top-20-sre-interview-questions-and-answers/"
        faq {
            question = "What are the Linux signals?"
            alternatives = [
                "Enlist all the Linux signals you are aware of",
                "Linux signals",
                "List the Linux signals",
                "What are Linux signals?"
            ]
            answer = "The common Linux signals are mentioned below:\nSIGHUP\nSIGINT\nSIGQUIT\nSIGFPE\nSIGKILL\nSIGALRM\nSIGTERM"
        }
    }
}