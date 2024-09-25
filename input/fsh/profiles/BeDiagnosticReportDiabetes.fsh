Profile: BeDiagnosticReportDiabetes
Parent: DiagnosticReport
Id: be-diagnostic-report-diabetes
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open 
* identifier contains UUID 1..1 MS
* identifier[UUID].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diagnostic-report-diabetes"
* extension contains BeExtRecordedDate named recorded-date 1..1 MS and
    BeExtRecorder named recorder 1..1 MS and
    BeExtCodeableReference named device 0..1 MS and
    BeExtSimpleNote named note 0..* MS and
    http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo named supportingInfo 0..* MS
* extension[device].extension[concept].valueCodeableConcept 1..1 MS
* extension[device].extension[concept].valueCodeableConcept.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type"
* effective[x] only Period
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.end 1..1 MS
* resultsInterpreter only Reference(BePractitionerRole or BePractitioner)
* resultsInterpreter 0..1 MS
* category 1..* MS
* category from BeVSDiabetesReportCategory
* code 1..1 MS
* code from BeVSDiabetesReportCode
* result ^slicing.discriminator.type = #value
* result ^slicing.discriminator.path = "reference.resolve().code"
* result ^slicing.rules = #open  
* result MS
* result only Reference(BeObservation)
* conclusion MS
* presentedForm MS
* presentedForm.contentType = #"application/pdf"
* status MS
* status from BeVSDiabetesReportStatus
