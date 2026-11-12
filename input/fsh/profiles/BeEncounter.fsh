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
* class ^definition = """Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations.

This element is mandatory. Implementers are asked to use one of the codes of the bound value set, or a more appropriate code from another code system. If the class is not applicable or not coded, a Data Absent Reason can be used."""
* class ^comment = """- Bound value set: [ActEncounterCode](http://terminology.hl7.org/ValueSet/v3-ActEncounterCode) (extensible), e.g. `AMB` (ambulatory), `IMP` (inpatient encounter), `EMER` (emergency), `HH` (home health), `VR` (virtual).
- Data Absent Reason: the [data-absent-reason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) on `class`, with a code from [DataAbsentReason](http://terminology.hl7.org/CodeSystem/data-absent-reason), e.g. `unknown`, `not-applicable` or `asked-unknown`.

Example of an encounter without a known class:

```json
"class": {
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode": "unknown"
    }
  ]
}
```

Further classes go in the `additionalClass` extension."""

// Further classes - the CareSet Class is 0..*, R4 Encounter.class is a single Coding. The first class goes
// in class, any further ones in the R5 pre-adoption extension (R5 Encounter.class 0..* CodeableConcept).
// No Belgian extension exists for this, so it is a documented exception to the rule of #182 (as careTeam, #194).
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.class named additionalClass 0..* MS
* extension[additionalClass] ^short = "Further classes (the CareSet Class is 0..*, Encounter.class is a single Coding)"
* extension[additionalClass] ^definition = "Further classifications of the Encounter, in addition to Encounter.class."
* extension[additionalClass] ^comment = "The CareSet allows several classes (Class 0..*), but R4 Encounter.class allows only one. Put the first class in `class` and any further ones in this extension, which pre-adopts the R5 element `Encounter.class`. No Belgian extension exists for this, so the R5 extension is used as a documented exception to the rule \"use Belgian extensions if they exist\" ([core-clinical#182](https://github.com/hl7-be/core-clinical/issues/182))."

// ServiceType - 0..* in the CareSet, but R4 Encounter.serviceType is 0..1. The first service type goes in
// serviceType, any further ones in the additionalServiceType extension (be-core BeExtCodeableConcept).
// The R5 pre-adoption extension is not usable here: R5 typed serviceType as CodeableReference,
// so extension-Encounter.serviceType only carries the Reference(HealthcareService) half.
* serviceType 0..1 MS
* extension contains BeExtCodeableConcept named additionalServiceType 0..* MS
// Same binding as Encounter.serviceType (base R4, example) until VS_Encounter_ServiceType exists (#146, #181).
* extension[additionalServiceType].valueCodeableConcept from http://hl7.org/fhir/ValueSet/service-type (example)
* extension[additionalServiceType] ^short = "Further service types (the CareSet ServiceType is 0..*, Encounter.serviceType is 0..1)"
* extension[additionalServiceType] ^definition = "Further types of services/specialisations offered during the Encounter, in addition to Encounter.serviceType."
* extension[additionalServiceType] ^comment = "The CareSet allows several service types (ServiceType 0..*), but R4 Encounter.serviceType allows only one. Put the first service type in `serviceType` and any further ones in this extension. It is not a separate CareSet element."

// Subject - 1..1
* subject 1..1 MS
* subject only Reference(BePatient)

// EpisodeOfCare - 0..*. Left as in the base resource (no Must Support, no constraint, not in the
// differential): BeEpisodeOfCare is published as not intended for implementation yet, and no
// profile may depend on it (https://github.com/hl7-be/validation-team/issues/131).

// BasedOn - 0..* (Belgian extension; R4 Encounter.basedOn only allows ServiceRequest)
* extension contains BeExtEncounterBasedOn named basedOn 0..* MS
* extension[basedOn] ^short = "BasedOn"
* extension[basedOn] ^definition = "The request that initiated this Encounter. In this case it can only originate from a CarePlan."

// CareTeam - 0..* (R5 pre-adoption extension; R4 Encounter has no careTeam)
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.careTeam named careTeam 0..* MS
* extension[careTeam] ^short = "CareTeam"
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
* reasonReference only Reference(BeProblem or BeProcedure or BeClinicalObservation)

// Diagnosis - 0..*, given as a reference to a BeProblem, as a code, or as both. R4
// Encounter.diagnosis.condition is a plain Reference, so the code goes in the be-core
// BeExtCodeableConcept extension on it, as in BeEpisodeOfCare (WG 29/10, #173).
* diagnosis MS
* diagnosis ^short = "Diagnosis"
* diagnosis ^definition = "List of diagnoses relevant for this Encounter."
* diagnosis.condition MS
* diagnosis.condition only Reference(BeProblem)
* diagnosis.condition.extension contains BeExtCodeableConcept named code 0..1 MS
* diagnosis.condition.extension[code].valueCodeableConcept from BeVSProblemCode (extensible)

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

// Not part of the CareSet; base Location until a Belgian profile is available (#174)
* location.location ^short = "Location"
