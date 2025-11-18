ValueSet: BeVSSurgicalApproach
Id: be-vs-surgical-approach
Title: "BeVSSurgicalApproach"
Description: "Surgical approach value set - indicates by which anatomical route or technique the procedure was performed (e.g., laparoscopic, endoscopic, percutaneous)"
* ^status = #draft
* ^experimental = false
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
// TODO: Add SNOMED CT codes for surgical approach concepts
// Examples: laparoscopic approach, endoscopic approach, percutaneous approach, open approach, etc.
* include codes from system http://snomed.info/sct where concept is-a #103379007 "Surgical approach value (qualifier value)"
