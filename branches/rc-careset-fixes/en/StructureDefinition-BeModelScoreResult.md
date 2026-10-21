# BeScoreResult model - Clinical Core v1.4.0

## Logical Model: BeScoreResult model 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-BeModelScoreResult.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelScoreResult.csv), [Excel](../StructureDefinition-BeModelScoreResult.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelScoreResult",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelScoreResult",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.5.42.19"
  }],
  "version" : "1.4.0",
  "name" : "BeModelScoreResult",
  "title" : "BeScoreResult model",
  "status" : "active",
  "date" : "2026-10-15T14:28:15+00:00",
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
  "description" : "Logical model for the BeScoreResult CareSet - the result of a standardised assessment scale (score) taken for a patient.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelScoreResult",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelScoreResult",
      "path" : "BeModelScoreResult",
      "short" : "BeScoreResult model",
      "definition" : "Logical model for the BeScoreResult CareSet - the result of a standardised assessment scale (score) taken for a patient."
    },
    {
      "id" : "BeModelScoreResult.identifier",
      "path" : "BeModelScoreResult.identifier",
      "short" : "Identifier of this administration of the assessment scale",
      "definition" : "Identifier of this administration of the assessment scale",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelScoreResult.patient",
      "path" : "BeModelScoreResult.patient",
      "short" : "The patient the assessment scale is taken for",
      "definition" : "The patient the assessment scale is taken for",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelScoreResult.evaluator",
      "path" : "BeModelScoreResult.evaluator",
      "short" : "Care professional or organization responsible for taking the standardised assessment scale",
      "definition" : "Care professional or organization responsible for taking the standardised assessment scale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelScoreResult.recorder",
      "path" : "BeModelScoreResult.recorder",
      "short" : "The person or system that records the assessment in the record - the same care provider, another collaborator, or the software itself when recording is automatic",
      "definition" : "The person or system that records the assessment in the record - the same care provider, another collaborator, or the software itself when recording is automatic",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelScoreResult.recordedDate",
      "path" : "BeModelScoreResult.recordedDate",
      "short" : "Date the standardised assessment scale was finally encoded in the system",
      "definition" : "Date the standardised assessment scale was finally encoded in the system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelScoreResult.observationDate",
      "path" : "BeModelScoreResult.observationDate",
      "short" : "End date of the observation and/or reference period for all information collected during the assessment",
      "definition" : "End date of the observation and/or reference period for all information collected during the assessment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelScoreResult.hasMember",
      "path" : "BeModelScoreResult.hasMember",
      "short" : "Groups the separate observations that make up this assessment",
      "definition" : "Groups the separate observations that make up this assessment",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelScoreResult.category",
      "path" : "BeModelScoreResult.category",
      "short" : "The category of the medical assessment",
      "definition" : "Value set in the CareSet: VS_Observation_Category",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.code",
      "path" : "BeModelScoreResult.code",
      "short" : "Identifies the assessment scale, for example SNOMED 273547007 Katz activities of daily living (assessment scale)",
      "definition" : "Value set in the CareSet: VS_BeScoreResult_Code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.minMax",
      "path" : "BeModelScoreResult.minMax",
      "short" : "The possible score range of the scale, for example 0-12",
      "definition" : "The possible score range of the scale, for example 0-12",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "BeModelScoreResult.value[x]",
      "path" : "BeModelScoreResult.value[x]",
      "short" : "The score of the scale, as a number with a unit or as a coded clinical finding",
      "definition" : "Value set in the CareSet: VS_BeScoreResult_Value",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.status",
      "path" : "BeModelScoreResult.status",
      "short" : "Status of the observation",
      "definition" : "Value set in the CareSet: VS__Status - final | entered-in-error",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "BeModelScoreResult.method",
      "path" : "BeModelScoreResult.method",
      "short" : "How the observation was obtained",
      "definition" : "Value set in the CareSet: VS_BeScoreResult_Method",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.codeDisplay",
      "path" : "BeModelScoreResult.codeDisplay",
      "short" : "The description corresponding to the value of the score",
      "definition" : "The description corresponding to the value of the score",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelScoreResult.interpretation",
      "path" : "BeModelScoreResult.interpretation",
      "short" : "The conclusion drawn from the total score",
      "definition" : "The conclusion drawn from the total score",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.component",
      "path" : "BeModelScoreResult.component",
      "short" : "A sub-score or component of the assessment scale",
      "definition" : "A sub-score or component of the assessment scale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "BeModelScoreResult.component.code",
      "path" : "BeModelScoreResult.component.code",
      "short" : "Identifies the sub-score or component of the assessment scale, for example a sub-scale within a standardised scale",
      "definition" : "Identifies the sub-score or component of the assessment scale, for example a sub-scale within a standardised scale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.component.value[x]",
      "path" : "BeModelScoreResult.component.value[x]",
      "short" : "The numeric value or score for this component",
      "definition" : "The numeric value or score for this component",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.component.interpretation",
      "path" : "BeModelScoreResult.component.interpretation",
      "short" : "The clinical interpretation of the sub-score, as text or coded",
      "definition" : "The clinical interpretation of the sub-score, as text or coded",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelScoreResult.note",
      "path" : "BeModelScoreResult.note",
      "short" : "Free text field",
      "definition" : "Free text field",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
