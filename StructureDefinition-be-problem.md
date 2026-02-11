# BeProblem - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeProblem**

## Resource Profile: BeProblem 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-problem | *Version*:1.0.1 | |
| Active as of 2021-01-10 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeProblem |

 
Belgian federal profile. Initially based on the functional description of the NIHDI. Defines a patient’s known problem, a diagnostic or antecedent that deserves attention. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-problem)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-problem.csv), [Excel](StructureDefinition-be-problem.xlsx), [Schematron](StructureDefinition-be-problem.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-problem",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-problem",
  "version" : "1.0.1",
  "name" : "BeProblem",
  "title" : "BeProblem",
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
  "description" : "Belgian federal profile. Initially based on the functional description of the NIHDI. Defines a patient's known problem, a diagnostic or antecedent that deserves attention.",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Condition.extension:ProblemOriginType",
        "path" : "Condition.extension",
        "sliceName" : "ProblemOriginType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-problem-origin-type"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.identifier",
        "path" : "Condition.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Condition.clinicalStatus",
        "path" : "Condition.clinicalStatus",
        "mustSupport" : true
      },
      {
        "id" : "Condition.verificationStatus",
        "path" : "Condition.verificationStatus",
        "mustSupport" : true
      },
      {
        "id" : "Condition.category",
        "path" : "Condition.category",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-problem-category"
        }
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-problem-code"
        }
      },
      {
        "id" : "Condition.bodySite",
        "path" : "Condition.bodySite",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-bodysite"
        }
      },
      {
        "id" : "Condition.bodySite.extension:laterality",
        "path" : "Condition.bodySite.extension",
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
        ]
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.encounter",
        "path" : "Condition.encounter",
        "mustSupport" : true
      },
      {
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
        "mustSupport" : true
      },
      {
        "id" : "Condition.abatement[x]",
        "path" : "Condition.abatement[x]",
        "mustSupport" : true
      },
      {
        "id" : "Condition.recordedDate",
        "path" : "Condition.recordedDate",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Condition.recorder",
        "path" : "Condition.recorder",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.asserter",
        "path" : "Condition.asserter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ]
      },
      {
        "id" : "Condition.note",
        "path" : "Condition.note",
        "mustSupport" : true
      }
    ]
  }
}

```
