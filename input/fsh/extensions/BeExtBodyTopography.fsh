Extension: BeExtBodyTopography
Id: be-ext-body-topography
Title: "BeExtBodyTopography"
Description: "Describes the location or relative position on the body, such as superior/inferior, medial/lateral or internal/external."
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from BeVSBodyTopography (preferred)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^context[+].type = #element
* ^context[=].expression = "Condition.bodySite"
* ^context[+].type = #element
* ^context[=].expression = "Observation.bodySite"
* ^context[+].type = #element
* ^context[=].expression = "Procedure.bodySite"
