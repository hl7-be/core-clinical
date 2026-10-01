# BeExtRecordedDate - Clinical Core v1.1.0

## Extension: 

The date the information was recorded

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md) and [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)
* Examples for this Extension: [Bundle/uc52-bundle](Bundle-uc52-bundle.md), [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md), [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md)... Show 8 more, [Observation/397dffb4-a88a-47d0-b10d-beffcbf6157d](Observation-397dffb4-a88a-47d0-b10d-beffcbf6157d.md), [Observation/449a728d-dfb4-422d-94aa-1a2d43849ee5](Observation-449a728d-dfb4-422d-94aa-1a2d43849ee5.md), [Observation/454a29d0-0893-458a-b2e5-25452b89e29a](Observation-454a29d0-0893-458a-b2e5-25452b89e29a.md), [Observation/6756477d-b57a-4611-b048-374d46f52908](Observation-6756477d-b57a-4611-b048-374d46f52908.md), [Observation/a6665182-e11a-40a9-ae83-9b093a353f16](Observation-a6665182-e11a-40a9-ae83-9b093a353f16.md), [Observation/b28ef33b-0480-4bde-a5df-94988813110b](Observation-b28ef33b-0480-4bde-a5df-94988813110b.md), [Observation/b44fe5d5-f57b-4424-b628-d2baeb447738](Observation-b44fe5d5-f57b-4424-b628-d2baeb447738.md) and [Observation/c611b58d-27bb-49e2-b3ec-bd59e986f5f3](Observation-c611b58d-27bb-49e2-b3ec-bd59e986f5f3.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeExtRecordedDate)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeExtRecordedDate.csv), [Excel](../StructureDefinition-BeExtRecordedDate.xlsx), [Schematron](../StructureDefinition-BeExtRecordedDate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeExtRecordedDate",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeExtRecordedDate",
  "version" : "1.1.0",
  "name" : "BeExtRecordedDate",
  "status" : "active",
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
  "description" : "The date the information was recorded",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationStatement"
  },
  {
    "type" : "element",
    "expression" : "MedicationRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "The date the information was recorded"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeExtRecordedDate"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
