Profile: BeCarePlan
Parent: CarePlan
* basedOn only Reference(BeCarePlan)
* replaces only Reference(BeCarePlan)
* partOf only Reference(BeCarePlan)
* subject only Reference(BePatient or Group)
* encounter only Reference(BeEncounter)
* author only Reference(BePatient or BePractitioner or BePractitionerRole or Device or RelatedPerson or BeOrganization or CareTeam )
* contributor only Reference(BePatient or BePractitioner or BePractitionerRole or Device or RelatedPerson or BeOrganization or CareTeam )
* careTeam only Reference(CareTeam)
* addresses only Reference(Condition)
* activity.detail.performer only Reference(BePractitioner or BePractitionerRole or BeOrganization or RelatedPerson or BePatient or CareTeam or HealthcareService or Device)