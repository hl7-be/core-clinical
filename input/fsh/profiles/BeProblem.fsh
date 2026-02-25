Profile: BeProblem
Parent: Condition
Id: be-problem
Title: "BeProblem"
Description: "A condition, diagnosis or situation that is the focus of care."

* extension contains BeExtProblemOriginType named ProblemOriginType 0..1 MS
* identifier MS
* clinicalStatus MS
* verificationStatus MS
* category 1.. MS
* category from BeVSProblemCategory (extensible)
* code 1.. MS
* code from BeVSProblemCode (extensible)
* bodySite MS
* bodySite from BeVSBodySite (required)
* bodySite.extension contains BeExtLaterality named laterality 0..1
* subject only Reference(BePatient)
* subject MS
* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate 1.. MS
* recorder 1.. MS
* recorder only Reference(BePractitioner or BePractitionerRole or BePatient)
* asserter only Reference(RelatedPerson or BePractitioner or BePractitionerRole or BePatient)
* note MS
* evidence 0..* MS