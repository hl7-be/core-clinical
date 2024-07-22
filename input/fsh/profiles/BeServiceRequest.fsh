Profile: BeServiceRequest 
Parent: ServiceRequest 
Id: be-service-request
* subject  only Reference(BePatient or Group or BeLocation or Device)
* encounter only Reference(BeEncounter)
* requester only Reference(BePractitioner or BePractitionerRole or BeOrganization or BePatient or RelatedPerson or Device)
* performer only	Reference(BePractitioner or BePractitionerRole or BeOrganization or CareTeam or HealthcareService or BePatient or Device or RelatedPerson)