ValueSet: BeVSDiabetesReportStatus
Id: be-vs-diabetes-report-status
Title: "BeVSDiabetesReportStatus"
Description: "Values to be used in the status of Diabetes reports"
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* ^experimental = false
* include http://hl7.org/fhir/diagnostic-report-status#final
* include http://hl7.org/fhir/diagnostic-report-status#partial
