ValueSet: BeVSBodySite
Id: be-vs-bodysite
Title: "Body Site ValueSet"
Description: "Body Site - placeholder valueset - the normative definition will be published in the Belgian terminology IG."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-bodysite"
* ^status = #active
* ^publisher = "eHealth Platform"
* ^experimental = false
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."""
//* ^caseSensitive = false

* include codes from system $sct where concept is-a $sct#442083009
