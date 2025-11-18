ValueSet: BeVSBodyTopography
Id: be-vs-body-topography
Title: "BeVSBodyTopography"
Description: "Body topography value set - describes the location or relative position on the body (e.g., superior/inferior, medial/lateral, internal/external)"
* ^status = #draft
* ^experimental = false
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
// TODO: Add SNOMED CT codes for body topography concepts
// Examples: superior, inferior, medial, lateral, proximal, distal, internal, external, anterior, posterior, etc.
* include codes from system http://snomed.info/sct where concept is-a #106233006 "Topographic anatomic site (observable entity)"
