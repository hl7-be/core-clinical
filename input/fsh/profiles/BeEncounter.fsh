Profile: BeEncounter
Parent: Encounter
Id: be-encounter
Title: "BeEncounter"
Description: "(Temporary version until approval HL7Belgium WG) Belgian profile indicating the base data needed for the recording of a meeting between a patient and a practitioner/organization"
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.class named class 0..* MS and
https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference named serviceType 0..* MS and
https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference named reason 0..* MS
// /*BeCondition or*/
* extension[reason].extension[reference].value[x] only Reference( BeProblem or BeProcedure or BeObservation  or ImmunizationRecommendation)
* extension[serviceType].extension[reference].value[x] only Reference( HealthcareService)    
* subject only Reference(BePatient or Group)
* subject MS
* statusHistory ^short = " please do not use deprecated"
* class ^short = " please do not use deprecated"
* classHistory ^short = " please do not use deprecated"
* serviceType ^short = " please do not use deprecated"
* reasonCode ^short = " please do not use deprecated"
* reasonReference ^short = " please do not use deprecated"
* participant.individual only Reference(BePractitioner or BePractitionerRole or RelatedPerson) 
* participant.individual ^short = "*TODO* RelatedPerson -> BeRelatedPerson"
* participant.individual.extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.participant.actor named actor 0..1 MS
* diagnosis.condition only Reference(BeProblem or BeProcedure)
* hospitalization.origin only Reference(Location or BeOrganization)
* hospitalization.origin ^short = "*TODO* Location -> BeLocation"
* hospitalization.destination only Reference(Location or BeOrganization)
* hospitalization.destination ^short = "*TODO* Location -> BeLocation"
* location.location only Reference(Location)
* location.location ^short = "*TODO* Location -> BeLocation"
* serviceProvider only Reference(BeOrganization)
* partOf only Reference(BeEncounter)