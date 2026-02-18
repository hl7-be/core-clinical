Profile: BeEncounter
Parent: Encounter
Id: be-encounter
Title: "BeEncounter"
Description: "Placeholder profile for contextualising the FHIR resource"

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