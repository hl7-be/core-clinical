ValueSet: BeVSReferenceRangeType
Id: be-vs-referencerange-type
Title: "Reference Range Type Value Set"
Description: "Values for BeScoreResult.referenceRange.type: a band defined by the scale (possible-range) or the band the result falls into (found-range)."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-referencerange-type"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* ^experimental = false

* include codes from system BeCSReferenceRangeType
