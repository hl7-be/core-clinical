# BeCarePlan - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeCarePlan**

## Resource Profile: BeCarePlan 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeCarePlan | *Version*:1.0.1 |
| Active as of 2026-02-11 | *Computable Name*:BeCarePlan |

 
Placeholder profile for contextualising the FHIR resource 

**Usages:**

* Refer to this Profile: [BeCarePlan](StructureDefinition-BeCarePlan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeCarePlan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeCarePlan.csv), [Excel](StructureDefinition-BeCarePlan.xlsx), [Schematron](StructureDefinition-BeCarePlan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeCarePlan",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeCarePlan",
  "version" : "1.0.1",
  "name" : "BeCarePlan",
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
  "description" : "Placeholder profile for contextualising the FHIR resource",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan"
      },
      {
        "id" : "CarePlan.basedOn",
        "path" : "CarePlan.basedOn",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeCarePlan"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.replaces",
        "path" : "CarePlan.replaces",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeCarePlan"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.partOf",
        "path" : "CarePlan.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeCarePlan"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.encounter",
        "path" : "CarePlan.encounter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-encounter"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.author",
        "path" : "CarePlan.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.contributor",
        "path" : "CarePlan.contributor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.activity.detail.performer",
        "path" : "CarePlan.activity.detail.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://hl7.org/fhir/StructureDefinition/HealthcareService",
              "http://hl7.org/fhir/StructureDefinition/Device"
            ]
          }
        ]
      }
    ]
  }
}

```
