Profile: BeScoreResult
Parent: Observation
Id: be-scoreresult
Title: "BeScoreResult"
Description: "To support the standard exchange of scores such as pain assessment scores, or risk score, etc"
* ^version = "1.0.0"
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
* identifier MS
* category MS
* category from BeVSScoreCategory (required)
* category ^short = "The high-level group or category of the score - e.g. 'Risk score' or 'Pain score'"
* code MS
* code from https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-score (required)
* code ^short = "The code of the score that is being calculated."
* subject 1.. MS
* subject only Reference(BePatient or Group)
* subject ^short = "The patient that this score refers to"
* effectivePeriod 1.. MS
* effectivePeriod only Period
* effectivePeriod ^sliceName = "effectivePeriod"
* effectivePeriod ^short = "The time period that the score refers to."
* issued 1.. MS
* issued ^short = "The date and time when the score was made available"
* performer only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization)
* performer MS
* performer ^short = "The care provider that took the assessment"
* value[x] 1.. MS
* value[x] ^short = "The actual score value."
* interpretation MS
* interpretation ^short = "The interpretation of the result from the value. For example if value is 12, the interpretation can be 'elevated'"
* bodySite MS
* bodySite ^short = "The body site to which the score applies, when applicable"
* bodySite.extension ^slicing.discriminator.type = #value
* bodySite.extension ^slicing.discriminator.path = "url"
* bodySite.extension ^slicing.rules = #open
* bodySite.extension contains BeExtLaterality named laterality 0..1 MS
* referenceRange MS
* referenceRange ^short = "The different ranges of the value"
* referenceRange ^definition = "The different ranges that the value can have, and corresponding evaluation (e.g. 0..10: normal; 11..20: elevated)"
* derivedFrom MS
* derivedFrom ^short = "The source values for the assessment - for example a QuestionnaireResponse"