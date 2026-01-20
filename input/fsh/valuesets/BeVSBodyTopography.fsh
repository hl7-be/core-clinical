ValueSet: BeVSBodyTopography
Id: be-vs-body-topography
Title: "BeVSBodyTopography"
Description: "Body topography value set - describes the location or relative position on the body (e.g., superior/inferior, medial/lateral, internal/external)"
* ^status = #draft
* ^experimental = false
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* include codes from system http://snomed.info/sct where concept is-a #106233006 "Topographic anatomic site (observable entity)"

* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/"