Extension: BeExtLaterality
Id: be-ext-laterality
Title: "BeExtLaterality"
Description: "An explicit statement of laterality of a lesion, or a treatment, etc."
* ^version = "1.0.0"
* ^date = "2021-01-10T10:59:49+00:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"

* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* value[x] only Coding
* valueCoding 0..1
* valueCoding from BeVSLaterality (required)