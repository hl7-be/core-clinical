Extension: BeExtEncounterBasedOn
Id: be-ext-encounter-basedon
Title: "Encounter BasedOn"
Description: "The request that initiated this Encounter. R4 Encounter.basedOn only allows Reference(ServiceRequest); this extension carries the CareSet's BasedOn, which refers to a CarePlan."
Context: Encounter
* value[x] only Reference(CarePlan)
* value[x] 1..1
* value[x] ^short = "*TODO* CarePlan -> BeCarePlan"
