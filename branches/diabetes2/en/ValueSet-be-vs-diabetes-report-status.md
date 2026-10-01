# BeVSDiabetesReportStatus - Clinical Core v1.1.0

## ValueSet: BeVSDiabetesReportStatus 

 
Values to be used in the status of Diabetes reports 

 **References** 

* [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-diabetes-report-status",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-diabetes-report-status",
  "version" : "1.1.0",
  "name" : "BeVSDiabetesReportStatus",
  "title" : "BeVSDiabetesReportStatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-10T20:58:27+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be"
    },
    {
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be"
    }]
  },
  {
    "name" : "Message-Structure",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "Values to be used in the status of Diabetes reports",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/diagnostic-report-status",
      "version" : "5.0.0",
      "concept" : [{
        "code" : "final"
      },
      {
        "code" : "partial"
      }]
    }]
  }
}

```
