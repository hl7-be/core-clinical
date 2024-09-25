ValueSet: BeVSDiabetesObservationStatus
Id: be-vs-diabetes-observation-status
Title: "BeVSDiabetesObservationStatus"
Description: "Values to be used in the status of Diabetes observations"
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* ^experimental = false
* include http://hl7.org/fhir/observation-status#final
* include http://hl7.org/fhir/observation-status#entered-in-error
