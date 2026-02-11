# BeClinicalObservation Model - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeClinicalObservation Model**

## Logical Model: BeClinicalObservation Model 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelClinicalObservation | *Version*:1.0.1 |
| Active as of 2026-02-11 | *Computable Name*:BeModelClinicalObservation |

 
Clinical Observation logical model 

**Usages:**

* Refer to this Logical Model: [BeClinicalObservation Model](StructureDefinition-BeModelClinicalObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelClinicalObservation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelClinicalObservation.csv), [Excel](StructureDefinition-BeModelClinicalObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelClinicalObservation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelClinicalObservation",
  "version" : "1.0.1",
  "name" : "BeModelClinicalObservation",
  "title" : "BeClinicalObservation Model",
  "status" : "active",
  "date" : "2026-02-11T21:10:09+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [
    {
      "name" : "eHealth Platform",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be"
        },
        {
          "system" : "email",
          "value" : "message-structure@www.ehealth.fgov.be"
        }
      ]
    },
    {
      "name" : "Message-Structure",
      "telecom" : [
        {
          "system" : "email",
          "value" : "message-structure@www.ehealth.fgov.be",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Clinical Observation logical model",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelClinicalObservation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelClinicalObservation",
        "path" : "BeModelClinicalObservation",
        "short" : "BeClinicalObservation Model",
        "definition" : "Clinical Observation logical model"
      },
      {
        "id" : "BeModelClinicalObservation.identifier",
        "path" : "BeModelClinicalObservation.identifier",
        "short" : "Unique identifier for the observation",
        "definition" : "Unique identifier for the observation",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.recordedDate",
        "path" : "BeModelClinicalObservation.recordedDate",
        "short" : "Date when the observation was recorded",
        "definition" : "Date when the observation was recorded",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.observationDate[x]",
        "path" : "BeModelClinicalObservation.observationDate[x]",
        "short" : "Date or period of the observation",
        "definition" : "Date or period of the observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.recorder",
        "path" : "BeModelClinicalObservation.recorder",
        "short" : "Person, organisation or device that recorded the observation",
        "definition" : "Person, organisation or device that recorded the observation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.performer",
        "path" : "BeModelClinicalObservation.performer",
        "short" : "The professional that performed the observation",
        "definition" : "The professional that performed the observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.patient",
        "path" : "BeModelClinicalObservation.patient",
        "short" : "The patient that this observation is about",
        "definition" : "The patient that this observation is about",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.request",
        "path" : "BeModelClinicalObservation.request",
        "short" : "The request that this observation is fulfilling",
        "definition" : "The request that this observation is fulfilling",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.partOfProcedure",
        "path" : "BeModelClinicalObservation.partOfProcedure",
        "short" : "Part of referenced procedure",
        "definition" : "Part of referenced procedure",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.specimen",
        "path" : "BeModelClinicalObservation.specimen",
        "short" : "The specimen that was used when this observation was made",
        "definition" : "The specimen that was used when this observation was made",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.device",
        "path" : "BeModelClinicalObservation.device",
        "short" : "The device used to generate the observation data",
        "definition" : "The device used to generate the observation data",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.category",
        "path" : "BeModelClinicalObservation.category",
        "short" : "A code that classifies the general type of observation being made",
        "definition" : "A code that classifies the general type of observation being made",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.code",
        "path" : "BeModelClinicalObservation.code",
        "short" : "Describes what was observed. Sometimes this is called the observation 'name'",
        "definition" : "Describes what was observed. Sometimes this is called the observation 'name'",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.value[x]",
        "path" : "BeModelClinicalObservation.value[x]",
        "short" : "The value of the observation - typically a code, an amount or a date",
        "definition" : "The value of the observation - typically a code, an amount or a date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "string"
          },
          {
            "code" : "boolean"
          },
          {
            "code" : "integer"
          },
          {
            "code" : "Range"
          },
          {
            "code" : "Ratio"
          },
          {
            "code" : "time"
          },
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.member",
        "path" : "BeModelClinicalObservation.member",
        "short" : "Other observations that are part of this observation",
        "definition" : "Other observations that are part of this observation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelClinicalObservation"
            ]
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.status",
        "path" : "BeModelClinicalObservation.status",
        "short" : "The status of the result value.",
        "definition" : "The status of the result value.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.interpretation",
        "path" : "BeModelClinicalObservation.interpretation",
        "short" : "A categorical assessment of an observation value",
        "definition" : "A categorical assessment of an observation value",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.referenceRange",
        "path" : "BeModelClinicalObservation.referenceRange",
        "short" : "Guidance on how to interpret the value by comparison to a normal or recommended range",
        "definition" : "Guidance on how to interpret the value by comparison to a normal or recommended range",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.referenceRange.low",
        "path" : "BeModelClinicalObservation.referenceRange.low",
        "short" : "Low Range, if relevant",
        "definition" : "Low Range, if relevant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.referenceRange.high",
        "path" : "BeModelClinicalObservation.referenceRange.high",
        "short" : "High Range, if relevant",
        "definition" : "High Range, if relevant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.bodySite",
        "path" : "BeModelClinicalObservation.bodySite",
        "short" : "The site on the subject's body where the observation was made (i.e. the target site)",
        "definition" : "The site on the subject's body where the observation was made (i.e. the target site)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.certainty",
        "path" : "BeModelClinicalObservation.certainty",
        "short" : "A subjective assessment of the quality of the observation",
        "definition" : "A subjective assessment of the quality of the observation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelClinicalObservation.note",
        "path" : "BeModelClinicalObservation.note",
        "short" : "Comments about the observation or the results",
        "definition" : "Comments about the observation or the results",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      }
    ]
  }
}

```
