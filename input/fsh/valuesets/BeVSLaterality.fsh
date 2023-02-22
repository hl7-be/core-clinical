ValueSet: BeVSLaterality
Id: be-vs-laterality
Title: "Laterality"
Description: "Laterality"
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
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^experimental = false
//* ^caseSensitive = false

* include  $sct#419161000
* include  $sct#419465000
* include  $sct#51440002
* include  $sct#261183002
* include  $sct#261122009
* include  $sct#255561001
* include  $sct#49370004
* include  $sct#264217000
* include  $sct#261089000
* include  $sct#255551008
* include  $sct#351726001
* include  $sct#352730000