Profile: BeProcedure
Parent: Procedure
Id: be-procedure
Description: "Placeholder profile for contextualising the FHIR resource"



* identifier 1..* MS

// Pre-adopt R5 Procedure.recorded (dateTime) - when the procedure was first captured in the subject's record
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.recorded named recorded 1..1 MS

* performed[x] 1..1 MS
* performed[x] only dateTime or Period
// * performedDateTime MS
// * performedPeriod MS
* subject 1..1 MS
* recorder 1..1 MS
* performer 0..1 MS
* performer.actor MS
* basedOn MS
* partOf MS
* category MS
* focalDevice MS
* usedReference MS
* usedCode MS
* status MS
* code 1..1 MS
* reasonCode MS
* reasonReference MS

// BodyLaterality - 0..1 (Belgian Extension)
* bodySite.extension contains BeExtLaterality named laterality 0..1 MS
* bodySite.extension[laterality] ^definition = "Specifies the laterality of the body where the procedure was performed if this precision is not contained in the code (right, left, both)."
* bodySite.extension[laterality] ^short = "Body laterality"

// BodyTopography - 0..1 (Belgian Extension)
* bodySite.extension contains BeExtBodyTopography named topography 0..1 MS
* bodySite.extension[topography] ^definition = "Describes the location or relative position of the procedure on the body, such as superior/inferior, medial/lateral or internal/external."
* bodySite.extension[topography] ^short = "Body topography"

// Surgical Approach - 0..1 (Belgian Extension)
* extension contains BeExtSurgicalApproach named surgicalApproach 0..* MS
* extension[surgicalApproach] ^short = "Surgical approach"
* extension[surgicalApproach] ^definition = "The surgical approach used for the procedure."

* location MS

* outcome MS

* report MS

* note MS


* subject only Reference(BePatient)
* recorder only Reference(BePatient or BePractitioner or BePractitionerRole)
* asserter only Reference(BePatient or BePractitioner or BePractitionerRole)
* performer.actor only Reference(BePatient or BePractitioner or BePractitionerRole)
