Profile: BeEncounter
Parent: Encounter
Id: be-encounter
Title: "BeEncounter"
Description: "A physical or virtual contact or interaction between a patient and one or more healthcare providers or a care organisation."

// Mapping of the CareSet Encounter (V0.7) elements onto R4 Encounter.
// The CareSet uses R5 element names; where R4 has an equivalent element it is used,
// extensions are only used for concepts R4 does not have.

// Business Identifier - 1..*
* identifier 1..* MS

// RecordedDate - 1..1 (be-core extension; R4/R5 Encounter has no native recorded/recordedDate element)
* extension contains BeExtRecordedDate named recordedDate 1..1 MS
* extension[recordedDate] ^short = "RecordedDate"
* extension[recordedDate] ^definition = "Date of registration by the Author/Recorder (date of the last update). Enables CareSet history management through the pair Business Identifier - RecordedDate, which guarantees access to the latest version of the content."


// Author - 1..1 (be-core extension)
* extension contains BeExtRecorder named recorder 1..1 MS
* extension[recorder] ^short = "Author"
* extension[recorder] ^definition = "The health professional who takes responsibility for the recorded content."

// Status - 1..1 (R4 required binding on Encounter.status is kept)
* status 1..1 MS

// Class - 1..1 (CareSet says 0..*; R4 Encounter.class is a mandatory single Coding)
* class 1..1 MS

// ServiceType - 0..1 + repeats through the be-core CodeableConcept extension (CareSet says 0..*).
// The R5 pre-adoption extension is not usable here: R5 typed serviceType as CodeableReference,
// so extension-Encounter.serviceType only carries the Reference(HealthcareService) half.
* serviceType 0..1 MS
* extension contains BeExtCodeableConcept named additionalServiceType 0..* MS
* extension[additionalServiceType] ^short = "Additional service type"
* extension[additionalServiceType] ^definition = "Further types of services/specialisations offered during the Encounter, in addition to Encounter.serviceType."

// Subject - 1..1
* subject 1..1 MS
* subject only Reference(BePatient)

// EpisodeOfCare - 0..*
* episodeOfCare MS
* episodeOfCare ^short = "*TODO* EpisodeOfCare -> BeEpisodeOfCare"

// BasedOn - 0..* (Belgian extension; R4 Encounter.basedOn only allows ServiceRequest)
* extension contains BeExtEncounterBasedOn named basedOn 0..* MS
* extension[basedOn] ^short = "BasedOn"
* extension[basedOn] ^definition = "The request that initiated this Encounter. In this case it can only originate from a CarePlan."

// CareTeam - 0..* (R5 pre-adoption extension; R4 Encounter has no careTeam)
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.careTeam named careTeam 0..* MS
* extension[careTeam] ^short = "*TODO* CareTeam -> BeCareTeam"
* extension[careTeam] ^definition = "Reference to the CareTeam resource recording which team is involved in the care during this Encounter."

// PartOf - 0..1
* partOf 0..1 MS
* partOf only Reference(BeEncounter)

// ServiceProvider - 0..1
* serviceProvider 0..1 MS
* serviceProvider only Reference(BeOrganization)

// Participant - 0..*, with Period 1..1 and Role 1..1
* participant MS
* participant.type 1..1 MS
* participant.type ^short = "Role of the Participant involved in this Encounter"
* participant.period 1..1 MS
* participant.individual 1..1 MS
* participant.individual only Reference(BePractitioner or BePractitionerRole)

// ActualPeriod - 0..1 (R4 Encounter.period)
* period 0..1 MS
* period ^short = "ActualPeriod - the effective start and end moments of this Encounter"

// Length - 0..1
* length 0..1 MS

// Reason - 0..*
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(Condition or Procedure or Observation)
* reasonReference ^short = "*TODO* Condition -> BeProblem, Procedure -> BeProcedure, Observation -> BeObservation"

// Diagnosis - 0..* as a CodeableReference (be-core backport extension), so a diagnosis can be
// given as a code, as a reference to a BeProblem, or as both. R4 Encounter.diagnosis.condition
// is a plain mandatory Reference and cannot carry the coded form.
* extension contains BeExtCodeableReference named diagnosis 0..* MS
* extension[diagnosis] ^short = "Diagnosis"
* extension[diagnosis] ^definition = "List of diagnoses relevant for this Encounter."
* extension[diagnosis].extension[reference].value[x] only Reference(BeProblem)
* diagnosis MS
* diagnosis.condition only Reference(BeProblem)

// Admission - 0..1 (R4 Encounter.hospitalization)
* hospitalization 0..1 MS
* hospitalization ^short = "Admission - details about the admission of the patient to the care organisation"
* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(BeOrganization)
* hospitalization.admitSource 0..1 MS
* hospitalization.reAdmission 0..1 MS
* hospitalization.reAdmission ^short = "Is this a re-admission of the patient? (R4 type is CodeableConcept)"
* hospitalization.destination 0..1 MS
* hospitalization.destination only Reference(BeOrganization)
* hospitalization.dischargeDisposition 0..1 MS

// Note - 0..* (be-core extension; R4 Encounter has no note)
* extension contains BeExtSimpleNote named note 0..* MS
* extension[note] ^short = "Note"
* extension[note] ^definition = "Additional information related to the CareSet content in free text form."

// Not part of the CareSet, constrained for consistency with the other Be profiles
* location.location ^short = "*TODO* Location -> BeLocation"
