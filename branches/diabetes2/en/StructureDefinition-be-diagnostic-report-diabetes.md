# BeDiagnosticReportDiabetes - Clinical Core v1.1.0

## Resource Profile: BeDiagnosticReportDiabetes 

 
Belgian profile on DiagnosticReport for diabetes-related reports, grouping diabetes observations (e.g. Time In Range, Time Above Range, Time Below Range) over an observation period together with the device used and the resulting interpretation. 

**Usages:**

* Examples for this Profile: [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md) and [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-diagnostic-report-diabetes)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-diagnostic-report-diabetes.csv), [Excel](../StructureDefinition-be-diagnostic-report-diabetes.xlsx), [Schematron](../StructureDefinition-be-diagnostic-report-diabetes.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-diagnostic-report-diabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-diagnostic-report-diabetes",
  "version" : "1.1.0",
  "name" : "BeDiagnosticReportDiabetes",
  "title" : "BeDiagnosticReportDiabetes",
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
  "description" : "Belgian profile on DiagnosticReport for diabetes-related reports, grouping diabetes observations (e.g. Time In Range, Time Above Range, Time Below Range) over an observation period together with the device used and the resulting interpretation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.extension",
      "path" : "DiagnosticReport.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "DiagnosticReport.extension:recorded-date",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "recorded-date",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeExtRecordedDate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:recorder",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "recorder",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:device",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "device",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:device.extension:concept",
      "path" : "DiagnosticReport.extension.extension",
      "sliceName" : "concept"
    },
    {
      "id" : "DiagnosticReport.extension:device.extension:concept.value[x]",
      "path" : "DiagnosticReport.extension.extension.value[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:device.extension:concept.value[x].coding.system",
      "path" : "DiagnosticReport.extension.extension.value[x].coding.system",
      "patternUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type"
    },
    {
      "id" : "DiagnosticReport.extension:note",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "note",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-simple-note"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.extension:supportingInfo",
      "path" : "DiagnosticReport.extension",
      "sliceName" : "supportingInfo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.supportingInfo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "DiagnosticReport.identifier:UUID",
      "path" : "DiagnosticReport.identifier",
      "sliceName" : "UUID",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier:UUID.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1,
      "patternUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diagnostic-report-diabetes"
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-diabetes-report-status"
      }
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-diabetes-report-category"
      }
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "439926003"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x].start",
      "path" : "DiagnosticReport.effective[x].start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x].end",
      "path" : "DiagnosticReport.effective[x].end",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm.contentType",
      "path" : "DiagnosticReport.presentedForm.contentType",
      "patternCode" : "application/pdf"
    }]
  }
}

```
