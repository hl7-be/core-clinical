Extension: BeExtProblemOriginType
Id: be-ext-problem-origin-type
Title: "BeExtProblemOriginType"
Description: "The type of event that triggers the problem to be evaluated - whether the problem was reported from a referring GP, etc..."
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
* value[x] only code
* valueCode 0..1
* valueCode from BeVSProblemOriginType (required)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1