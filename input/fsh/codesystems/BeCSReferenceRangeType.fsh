CodeSystem: BeCSReferenceRangeType
Id: be-cs-referencerange-type
Title: "Reference Range Type"
Description: "The meaning of an Observation.referenceRange for a score: a band defined by the scale, or the band the result falls into. Deliberately valence-free (no 'normal'/'high'/'elevated')."
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
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* #possible-range "Possible range" "One of the bands the scale defines (documents the possible ranges of the score)."
* #possible-range ^designation[0].language = #nl-BE
* #possible-range ^designation[=].value = "Mogelijk bereik"
* #possible-range ^designation[+].language = #fr-BE
* #possible-range ^designation[=].value = "Plage possible"
* #found-range "Found range" "The band this particular result falls into."
* #found-range ^designation[0].language = #nl-BE
* #found-range ^designation[=].value = "Gevonden bereik"
* #found-range ^designation[+].language = #fr-BE
* #found-range ^designation[=].value = "Plage constatée"
