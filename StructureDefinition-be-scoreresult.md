# BeScoreResult - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeScoreResult**

## Resource Profile: BeScoreResult 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-scoreresult | *Version*:1.0.1 | |
| Active as of 2021-01-10 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeScoreResult |

 
To support the standard exchange of scores such as pain assessment scores, or risk score, etc 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-scoreresult)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-scoreresult.csv), [Excel](StructureDefinition-be-scoreresult.xlsx), [Schematron](StructureDefinition-be-scoreresult.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-scoreresult",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-scoreresult",
  "version" : "1.0.1",
  "name" : "BeScoreResult",
  "title" : "BeScoreResult",
  "status" : "active",
  "date" : "2021-01-10T10:59:49+00:00",
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
  "description" : "To support the standard exchange of scores such as pain assessment scores, or risk score, etc",
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
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
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
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "short" : "The high-level group or category of the score - e.g. 'Risk score' or 'Pain score'",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-scorecategory"
        }
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "The code of the score that is being calculated.",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-score"
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "The patient that this score refers to",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.effective[x]:effectivePeriod",
        "path" : "Observation.effective[x]",
        "sliceName" : "effectivePeriod",
        "short" : "The time period that the score refers to.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "The date and time when the score was made available",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "The care provider that took the assessment",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "The actual score value.",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "The interpretation of the result from the value. For example if value is 12, the interpretation can be 'elevated'",
        "mustSupport" : true
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "short" : "The body site to which the score applies, when applicable",
        "mustSupport" : true
      },
      {
        "id" : "Observation.bodySite.extension:laterality",
        "path" : "Observation.bodySite.extension",
        "sliceName" : "laterality",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "The different ranges of the value",
        "definition" : "The different ranges that the value can have, and corresponding evaluation (e.g. 0..10: normal; 11..20: elevated)",
        "mustSupport" : true
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "The source values for the assessment - for example a QuestionnaireResponse",
        "mustSupport" : true
      }
    ]
  }
}

```
