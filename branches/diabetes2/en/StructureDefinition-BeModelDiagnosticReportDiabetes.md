# Logical data model for Diabetes Diagnostic Report - Clinical Core v1.1.0

## Logical Model: Logical data model for Diabetes Diagnostic Report 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelDiagnosticReportDiabetes)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelDiagnosticReportDiabetes.csv), [Excel](../StructureDefinition-BeModelDiagnosticReportDiabetes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelDiagnosticReportDiabetes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelDiagnosticReportDiabetes",
  "version" : "1.1.0",
  "name" : "BeModelDiagnosticReportDiabetes",
  "title" : "Logical data model for Diabetes Diagnostic Report ",
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
  "description" : "A",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelDiagnosticReportDiabetes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelDiagnosticReportDiabetes",
      "path" : "BeModelDiagnosticReportDiabetes",
      "short" : "Logical data model for Diabetes Diagnostic Report ",
      "definition" : "A"
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.identifier",
      "path" : "BeModelDiagnosticReportDiabetes.identifier",
      "short" : "Unique identifier of the report",
      "definition" : "Unique identifier of the report",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.recordedDate",
      "path" : "BeModelDiagnosticReportDiabetes.recordedDate",
      "short" : "Date the report was authored.",
      "definition" : "Date the report was authored.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.status",
      "path" : "BeModelDiagnosticReportDiabetes.status",
      "short" : "The status of the report",
      "definition" : "The status of the report",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.patient",
      "path" : "BeModelDiagnosticReportDiabetes.patient",
      "short" : "The patient - subject of the report.",
      "definition" : "The patient - subject of the report.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.recorder",
      "path" : "BeModelDiagnosticReportDiabetes.recorder",
      "short" : "The provider or organization that encodes the information.",
      "definition" : "The provider or organization that encodes the information.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.performer",
      "path" : "BeModelDiagnosticReportDiabetes.performer",
      "short" : "The service provider or organization that collects the observations and produces the report.",
      "definition" : "The service provider or organization that collects the observations and produces the report.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.interpreter",
      "path" : "BeModelDiagnosticReportDiabetes.interpreter",
      "short" : "Care provider that interpreted the observations in the report.",
      "definition" : "Care provider that interpreted the observations in the report.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.observationPeriod",
      "path" : "BeModelDiagnosticReportDiabetes.observationPeriod",
      "short" : "The period covered by the report.",
      "definition" : "The period covered by the report.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.category",
      "path" : "BeModelDiagnosticReportDiabetes.category",
      "short" : "Category of the report.",
      "definition" : "Category of the report.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.qualification",
      "path" : "BeModelDiagnosticReportDiabetes.qualification",
      "short" : "The determined category of diabetic patient (CAT 1, CAT 2, CAT 3)",
      "definition" : "The determined category of diabetic patient (CAT 1, CAT 2, CAT 3)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.device",
      "path" : "BeModelDiagnosticReportDiabetes.device",
      "short" : "The device used in the report",
      "definition" : "The device used in the report",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.code",
      "path" : "BeModelDiagnosticReportDiabetes.code",
      "short" : "The type of report code",
      "definition" : "The type of report code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.derivedObservations",
      "path" : "BeModelDiagnosticReportDiabetes.derivedObservations",
      "short" : "Observations derived from initial data",
      "definition" : "Observations derived from initial data",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Observation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.measurementObservations",
      "path" : "BeModelDiagnosticReportDiabetes.measurementObservations",
      "short" : "Observations actually captured and used to produce the analysis",
      "definition" : "Observations actually captured and used to produce the analysis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Observation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.diagnosis",
      "path" : "BeModelDiagnosticReportDiabetes.diagnosis",
      "short" : "Problem reference related to this diagnostic report????",
      "definition" : "Problem reference related to this diagnostic report????",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Condition"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.note",
      "path" : "BeModelDiagnosticReportDiabetes.note",
      "short" : "report comments in free text format.",
      "definition" : "report comments in free text format.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelDiagnosticReportDiabetes.document",
      "path" : "BeModelDiagnosticReportDiabetes.document",
      "short" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "definition" : "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Binary"
      }]
    }]
  }
}

```
