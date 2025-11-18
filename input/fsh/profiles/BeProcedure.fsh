Profile: BeProcedure
Parent: Procedure
Id: be-procedure
Description: """Belgian federal profile for a procedure.

This profile defines the Belgian constraints and extensions on the Procedure resource for recording procedures performed on or for a patient."""

//* ^version = "1.0.0"

// UniqueIdentifier - 1..*
* identifier 1..* MS
* identifier ^definition = "Unique identifier for the procedure."

* extension contains 
// SurgicalApproach - 0..* (Belgian Extension)
    BeExtSurgicalApproach named surgicalApproach 0..* MS and 
// RecordedDate - 1..1 (R5 backport extension)
    http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.recorded named recorded 1..1 MS and 
// UsedDevice/Material - 0..* (R5 backport extension)
    http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.used named used 0..* MS


* extension[surgicalApproach] ^definition = "Indicates by which anatomical route or according to which technique the procedure was performed. For example: laparoscopic, endoscopic, percutaneous."
* extension[surgicalApproach] ^short = "Surgical approach method"

* extension[recorded] ^definition = "Date of the last modification/recording of the procedure. This is an R5 element backported to R4."
* extension[recorded] ^short = "Date the procedure was first recorded"

* extension[used].value[x] only CodeableConcept or Reference
* extension[used] ^definition = "Devices, medications, substances or materials used temporarily during the procedure. For example: surgical robot, intraoperative imaging, neuronavigation. This also includes substances such as gels. Standard small instruments such as scalpels and syringes are not recorded. This is an R5 element backported to R4."
* extension[used] ^short = "Items used during procedure"


// PerformedDate - 1..1
* performed[x] 1..1 MS
* performed[x] ^definition = "Date or period when the procedure was actually performed. For example: the date of an operation or the period during which a treatment was carried out."

// Patient - 1..1
* subject 1..1 MS
* subject only Reference(BePatient)
* subject ^definition = "The unique patient identification code. This includes: The patient's Social Security Identification Number (NISS), generally corresponding to the national registry number. In some cases, another unique identification code may be authorized, such as the BIS number or simply the name and date of birth."

// Recorder - 1..1
* recorder 1..1 MS
* recorder only Reference(BePatient or BePractitioner or BePractitionerRole)
* recorder ^definition = "Identifies the person, organization or device that recorded the procedure. For a healthcare provider, this is the Social Security Identification Number (NISS), generally corresponding to the national registry number. For an organization, the Crossroads Bank for Social Security (BCSS) number is used. For a medical device, use the unique device identification number."

// Performer - 0..1
* performer 0..1 MS
* performer.actor only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization or Device)
* performer.actor ^definition = "Identifies the person who performed the procedure. For a healthcare provider, this is the Social Security Identification Number (NISS), generally corresponding to the national registry number. For an organization, the Crossroads Bank for Social Security (BCSS) number is used. For a medical device, use the unique device identification number."

// BasedOn - 0..*
* basedOn MS
* basedOn ^definition = "Reference to the CarePlan and/or Referral Prescription. For example: a physiotherapy session performed on prescription from the general practitioner."

// PartOf - 0..*
* partOf MS
* partOf ^definition = "Part of the event being referenced: procedure, observation (symptoms) or problem (disease). For example: Blood draw (procedure) is part of the diagnostic observation (Observation)."

// Category - 0..*
* category MS
* category ^definition = "Type or nature of the procedure. For example: surgical, psychiatric or chiropractic procedures, etc."

// FocalDevice (implanted/manipulated) - 0..*
* focalDevice MS
* focalDevice ^definition = "A device implanted, removed or otherwise manipulated in a patient (such as calibration, battery replacement or adjustment of a prosthesis). The device is a central element of the procedure. For example: implantation of a cardiac pacemaker."
* focalDevice.action MS
* focalDevice.action ^definition = "The kind of change that happened to the device during the procedure (e.g., implanted, explanted, manipulated)."


// Location - 0..1
* location MS
* location ^definition = "Reference to the location where the procedure was performed. Example: Healthcare provider's office, Patient's home, Hospital, Outpatient, other."

// Status - 1..1
* status 1..1 MS
* status ^definition = "Procedure status (not-done, stopped, completed, entered-in-error). Note: 'not-done' is out of scope as it implies planning. Business Rule: 'completed' by default."

// Code - 1..1
* code 1..1 MS
* code ^definition = "Identification of the procedure (SNOMED-CT Procedure concept)."

// Reason - 0..* (R5 element, may need extension in R4)
// Note: This may require a version extension for R5 'reason' element
* reasonCode MS
* reasonReference MS
* reasonCode ^definition = "Reason why the procedure is performed. For example: amputation after an accident, broken leg, etc."
* reasonReference ^definition = "Reference to the condition, observation or other resource that is the reason for the procedure."

// BodySite (BodyLocation) - 0..1
* bodySite MS
* bodySite ^definition = "Indicates the location on the patient's body where the procedure was performed if this precision is not contained in the code."

// BodyLaterality - 0..1 (Belgian Extension)
* bodySite.extension contains BeExtLaterality named laterality 0..1 MS
* bodySite.extension[laterality] ^definition = "Specifies the laterality of the body where the procedure was performed if this precision is not contained in the code (right, left, both)."
* bodySite.extension[laterality] ^short = "Body laterality"

// BodyTopography - 0..1 (Belgian Extension)
* bodySite.extension contains BeExtBodyTopography named topography 0..1 MS
* bodySite.extension[topography] ^definition = "Describes the location or relative position of the procedure on the body, such as superior/inferior, medial/lateral or internal/external."
* bodySite.extension[topography] ^short = "Body topography"

// Result/Outcome - 0..1
* outcome MS
* outcome ^definition = "Result of the procedure execution. Example: Partial success, Success, Unsuccessful."

// Report - 0..*
* report MS
* report ^definition = "Any report resulting from the procedure. To be discussed (In version 1: attached document (pdf, URL, jpg, etc.). In the future possibly reference to a DiagnosticReport or other)."

// Note - 0..*
* note MS
* note ^definition = "Additional information about the procedure."


