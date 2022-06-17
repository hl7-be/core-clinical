Profile: BeProblem
Parent: Condition
Id: be-problem
Title: "BeProblem"
Description: "Belgian federal profile. Initially based on the functional description of the NIHDI. Defines a patient's known problem, a diagnostic or antecedent that deserves attention."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-01-10T10:59:49+00:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains BeExtProblemOriginType named ProblemOriginType 0..1 MS
* identifier MS
* clinicalStatus MS
* verificationStatus MS
* category 1.. MS
* category from BeVSProblemCategory (extensible)
* code 1.. MS
* code from BeVSProblemCode (extensible)
* bodySite MS
* bodySite from BeVSBodySite (required)
* bodySite.extension ^slicing.discriminator.type = #value
* bodySite.extension ^slicing.discriminator.path = "url"
* bodySite.extension ^slicing.rules = #open
* bodySite.extension contains BeExtLaterality named laterality 0..1
* subject only Reference(BePatient)
* subject MS
* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate 1.. MS
* recorder 1.. MS
* recorder only Reference(BePractitioner or BePractitionerRole or BePatient)
* asserter only Reference(RelatedPerson or BePractitioner or BePractitionerRole or BePatient)
* note MS