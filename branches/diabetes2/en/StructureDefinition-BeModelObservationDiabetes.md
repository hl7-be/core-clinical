# Diabetes Observation Logical Model - Clinical Core v1.1.0

## Logical Model: Diabetes Observation Logical Model 

 
Logical model for diabetes-related clinical observations, derived from the generic clinical observation model. Captures glucose monitoring data and derived values such as Time In Range (TIR), Time Above Range (TAR) and Time Below Range (TBR). 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelObservationDiabetes)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelObservationDiabetes.csv), [Excel](../StructureDefinition-BeModelObservationDiabetes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelObservationDiabetes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelObservationDiabetes",
  "version" : "1.1.0",
  "name" : "BeModelObservationDiabetes",
  "title" : "Diabetes Observation Logical Model",
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
  "description" : "Logical model for diabetes-related clinical observations, derived from the generic clinical observation model. Captures glucose monitoring data and derived values such as Time In Range (TIR), Time Above Range (TAR) and Time Below Range (TBR).",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelObservationDiabetes",
  "baseDefinition" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelClinicalObservation",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelObservationDiabetes",
      "path" : "BeModelObservationDiabetes",
      "short" : "Diabetes Observation Logical Model",
      "definition" : "Logical model for diabetes-related clinical observations, derived from the generic clinical observation model. Captures glucose monitoring data and derived values such as Time In Range (TIR), Time Above Range (TAR) and Time Below Range (TBR)."
    },
    {
      "id" : "BeModelObservationDiabetes.identifier",
      "path" : "BeModelObservationDiabetes.identifier",
      "short" : "Unique observation business identifier."
    }]
  }
}

```
