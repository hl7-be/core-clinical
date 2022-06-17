CodeSystem: BeCSScoreCategory
Id: be-cs-score-category
Title: "Score Category"
Description: "Score Category"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-01-10T10:59:49+00:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* ^content = #complete
* #risk "Risk score" "Risk score"
* #risk ^designation[0].language = #fr-BE
* #risk ^designation[=].value = "Risk score"
* #risk ^designation[+].language = #nl-BE
* #risk ^designation[=].value = "Risk score"
* #pain "Pain score" "Pain score"
* #pain ^designation[0].language = #fr-BE
* #pain ^designation[=].value = "Pain Score"
* #pain ^designation[+].language = #nl-BE
* #pain ^designation[=].value = "Pain Score"
* #other "Other" "Other"
* #other ^designation[0].language = #fr-BE
* #other ^designation[=].value = "Autre"
* #other ^designation[+].language = #nl-BE
* #other ^designation[=].value = "andere"