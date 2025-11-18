Extension: BeExtSurgicalApproach
Id: be-ext-surgical-approach
Title: "BeExtSurgicalApproach"
Description: "Indicates by which anatomical route or according to which technique the procedure was performed. For example: laparoscopic, endoscopic, percutaneous."
* value[x] only CodeableConcept
* valueCodeableConcept 0..1
* valueCodeableConcept from BeVSSurgicalApproach (preferred)
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^context[+].type = #element
* ^context[=].expression = "Procedure"
