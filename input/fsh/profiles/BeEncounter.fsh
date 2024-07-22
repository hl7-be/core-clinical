Profile: BeEncounter
Parent: Encounter
Id: be-encounter
Title: "BeEncounter"
Description: "(Temporary version until approval HL7Belgium WG) Belgian profile indicating the base data needed for the recording of a meeting between a patient and a practitioner/organization"
* subject only Reference(BePatient or Group)
* participant.individual only Reference(BePractitioner or BePractitionerRole or RelatedPerson) 
* participant.individual ^short = "*TODO* RelatedPerson -> BeRelatedPerson"
* reasonReference only	Reference(Condition or Procedure or Observation or ImmunizationRecommendation)
* reasonReference ^short = "*TODO* Condition -> BeCondition, Procedure -> BeProcedure, Observation -> BeObservation"
* diagnosis.condition only Reference(Condition or Procedure)
* diagnosis.condition ^short = "*TODO* Condition -> BeCondition, Procedure -> BeProcedure"
* hospitalization.origin only Reference(Location or BeOrganization)
* hospitalization.origin ^short = "*TODO* Location -> BeLocation"
* hospitalization.destination only Reference(Location or BeOrganization)
* hospitalization.destination ^short = "*TODO* Location -> BeLocation"
* location.location only Reference(Location)
* location.location ^short = "*TODO* Location -> BeLocation"
* serviceProvider only Reference(BeOrganization)
* partOf only Reference(BeEncounter)