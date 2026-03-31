ValueSet: BeVSBodySite
Id: be-vs-bodysite
Title: "Body Site"
Description: "Body Site - placeholder valueset - the normative definition will be published in the Belgian terminology IG."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-bodysite"
* ^status = #active

* ^publisher = "eHealth Platform"

* ^experimental = false
//* ^caseSensitive = false

* include codes from system $sct where concept is-a $sct#442083009
