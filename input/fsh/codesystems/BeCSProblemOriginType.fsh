CodeSystem: BeCSProblemOriginType
Id: be-cs-problem-origin-type
Title: "Problem Origin Type"
Description: "Problem Origin Type"
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
* #referral "Referral order" "Following a referral order"
* #referral ^designation[0].language = #fr-BE
* #referral ^designation[=].value = "prescription de renvoi"
* #referral ^designation[+].language = #nl-BE
* #referral ^designation[=].value = "verwijsvoorschrift"
* #own-initiative "Patient's own initiative" "The patient has arrived on their own initiative"
* #own-initiative ^designation[0].language = #fr-BE
* #own-initiative ^designation[=].value = "libre"
* #own-initiative ^designation[+].language = #nl-BE
* #own-initiative ^designation[=].value = "Op eigen initiatief"
* #counsel "Advice or recommendation from another provider (no prescription)" "From an advice or recommendation of a health professional (without prescription)"
* #counsel ^designation[0].language = #fr-BE
* #counsel ^designation[=].value = "conseil"
* #counsel ^designation[+].language = #nl-BE
* #counsel ^designation[=].value = "doorverwijzing"
* #other "other" "Other"
* #other ^designation[0].language = #fr-BE
* #other ^designation[=].value = "autre"
* #other ^designation[+].language = #nl-BE
* #other ^designation[=].value = "andere"