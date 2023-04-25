Extension: BeExtLaterality
Id: be-ext-laterality
Title: "BeExtLaterality"
Description: "An explicit statement of laterality of a lesion, or a treatment, etc."
* value[x] only Coding
* valueCoding 0..1
* valueCoding from BeVSLaterality (required)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^context[+].type = #element
* ^context[=].expression = "Claim.item.bodySite"
* ^context[+].type = #element
* ^context[=].expression = "Condition.bodySite"
* ^context[+].type = #element
* ^context[=].expression = "Immunization.site"
* ^context[+].type = #element
* ^context[=].expression = "Observation.bodySite"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.bodySite"
