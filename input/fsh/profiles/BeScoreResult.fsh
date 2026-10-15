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

// Mapping of the CareSet BeScoreResult (V0.1) elements onto R4 Observation.
* identifier 1..* MS
* category MS
* category from BeVSScoreCategory (required)
* category ^short = "The high-level group or category of the score - e.g. 'Risk score' or 'Pain score'"
* code MS
* code from https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-score (required)
* code ^short = "The code of the score that is being calculated."
* subject 1.. MS
* subject only Reference(BePatient or Group)
* subject ^short = "The patient that this score refers to"
* effectivePeriod 1.. MS
* effectivePeriod only Period
* effectivePeriod ^sliceName = "effectivePeriod"
* effectivePeriod ^short = "The time period that the score refers to."
// RecordedDate - 1..1 (be-core extension). Not the native Observation.issued:
// R4 types issued as instant, which forces a full timestamp, while the CareSet
// asks for a date. BeExtRecordedDate carries a dateTime.
* extension contains BeExtRecordedDate named recordedDate 1..1 MS
* extension[recordedDate] ^short = "RecordedDate"
* extension[recordedDate] ^definition = "The date the standardised assessment scale was finally encoded in the system."

// *TODO* ask at the meeting: does this CareSet need Observation.issued at all,
// next to RecordedDate? They are different facts - issued is "when this version
// was made available to providers" (an instant), RecordedDate is the date the
// scale was encoded / last updated. The CareSet names only the second. Options:
// keep issued as an optional native element (as now), drop it from the profile,
// or add it to the CareSet as an element of its own.
* issued MS

// Recorder - 1..1 (be-core extension; R4 Observation has no recorder element).
//
// *TODO* ask at the meeting: who or what can be the Recorder?
// The CareSet calls it "la personne ou le systeme qui enregistre l'evaluation
// dans le dossier (encodeur de donnees)" and explicitly allows the software
// itself. be-core's BeExtRecorder says the opposite on its value: "The
// responsability for a recording can only be taken by a natural person. The use
// of BeOrganisation is therefore discouraged. Use the organisation in
// BePractionerRole instead." A device cannot take responsibility, and R4 allows
// no Device on performer either, so one of these has to give:
//   a) Recorder here is a pure data encoder, and BeExtRecorder - which asserts
//      responsibility - is the wrong carrier for it;
//   b) be-core adds Device to BeExtRecorder and softens that statement;
//   c) automatic recording is out of scope and a natural person is always named.
// Related: BeEpisodeOfCare and BeEncounter use this same extension for Author,
// "the professional who takes responsibility for the recorded content", so one
// extension is currently carrying two different concepts. This CareSet is the
// first to need them apart: it has Evaluator, Recorder and no Author at all.
* extension contains BeExtRecorder named recorder 1..1 MS
* extension[recorder] ^short = "Recorder"
* extension[recorder] ^definition = "The person or system that records the assessment in the record - the same care provider, another collaborator, or the software itself when recording is automatic."
* extension[recorder].value[x] only Reference(BePractitioner or BePractitionerRole or BeOrganization)
* performer only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization)
* performer MS
* performer ^short = "The care provider that took the assessment"
* value[x] 0..1 MS
* value[x] ^short = "The actual score value."
* interpretation MS
* interpretation ^short = "The interpretation of the result from the value. For example if value is 12, the interpretation can be 'elevated'"
* bodySite MS
* bodySite from BeVSBodySite (required)
* bodySite ^short = "The body site to which the score applies, when applicable"
* bodySite.extension ^slicing.discriminator.type = #value
* bodySite.extension ^slicing.discriminator.path = "url"
* bodySite.extension ^slicing.rules = #open
* bodySite.extension contains BeExtLaterality named laterality 0..1 MS
* bodySite.extension contains BeExtBodyTopography named topography 0..1 MS
* referenceRange 0..1 MS
* referenceRange ^short = "The different ranges of the value"
* referenceRange ^definition = "The different ranges that the value can have, and corresponding evaluation (e.g. 0..10: normal; 11..20: elevated)"
* derivedFrom MS
* derivedFrom ^short = "The source values for the assessment - for example a QuestionnaireResponse"

// Status - 1..1 (R4 required binding kept for now; see VS__Status in the CareSet)
* status MS

// Method - 0..1 (VS_BeScoreResult_Method has no codes in the CareSet yet)
* method 0..1 MS
* method ^short = "How the observation was obtained"

// hasMember - 0..*
* hasMember 0..* MS
* hasMember ^short = "Groups the observations that make up this assessment scale"

// Component.Code / Component.value / Component.Interpretation - the sub-scores
* component 0..* MS
* component ^short = "A sub-score or component of the assessment scale"
* component.code MS
* component.code ^short = "Identifies the sub-score or component of the assessment scale"
* component.value[x] 0..1 MS
* component.value[x] ^short = "The value or score of this component"
* component.interpretation MS
* component.interpretation ^short = "The clinical interpretation of the sub-score"

// Note - 0..*
* note 0..* MS
* note ^short = "Free text remark"
