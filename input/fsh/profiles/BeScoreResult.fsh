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
* code from https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-score (extensible)
* code ^short = "The code of the score that is being calculated."
// Alternative binding: the entire BelRAI code set is offered as a candidate
// additional binding, an alternative to the primary be-vs-score value set.
* code ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[0].extension[0].valueCode = #candidate
* code ^binding.extension[0].extension[1].url = "valueSet"
* code ^binding.extension[0].extension[1].valueCanonical = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-belrai-score"
* code ^binding.extension[0].extension[2].url = "documentation"
* code ^binding.extension[0].extension[2].valueMarkdown = "For BelRAI evaluations, the code is drawn entirely from the BelRAI scale/screener/CAP code set."
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
* interpretation ^short = "The derived meaning of the score (e.g. the label of a computed/aggregated value), carried in interpretation.text or interpretation.coding.display."
* interpretation ^comment = "Used to carry the textual meaning of a score - notably for calculated/aggregated values (e.g. a summed module score) where value[x] is a valueQuantity decimal. This is NOT a high/low/elevated clinical flag; the base extensible binding to observation-interpretation does not apply to that intent. Coded score-meaning value sets may be bound in a later release."
* bodySite MS
* bodySite ^short = "The body site to which the score applies, when applicable"
* bodySite.extension ^slicing.discriminator.type = #value
* bodySite.extension ^slicing.discriminator.path = "url"
* bodySite.extension ^slicing.rules = #open
* bodySite.extension contains BeExtLaterality named laterality 0..1 MS
* referenceRange MS
* referenceRange ^short = "The score bands - the possible bands of the scale and/or the band the result falls into"
* referenceRange ^definition = "Used with a valueQuantity (numeric/decimal) score. referenceRange.type distinguishes a band defined by the scale (possible-range) from the band this result falls into (found-range); referenceRange.low/high carry the numeric bounds and referenceRange.text the band label. This is a valence-free description - it does not assert 'normal'/'elevated'."
* referenceRange.type from BeVSReferenceRangeType (extensible)
* referenceRange.type ^short = "Whether this is one of the scale's possible bands, or the band the result falls into"
* derivedFrom MS
* derivedFrom ^short = "The source values for the assessment - for example a QuestionnaireResponse"