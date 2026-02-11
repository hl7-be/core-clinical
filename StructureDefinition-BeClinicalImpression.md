# BeClinicalImpression - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeClinicalImpression**

## Resource Profile: BeClinicalImpression 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeClinicalImpression | *Version*:1.0.1 |
| Active as of 2026-02-11 | *Computable Name*:BeClinicalImpression |

 
Placeholder profile for contextualising the FHIR resource 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeClinicalImpression)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeClinicalImpression.csv), [Excel](StructureDefinition-BeClinicalImpression.xlsx), [Schematron](StructureDefinition-BeClinicalImpression.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeClinicalImpression",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeClinicalImpression",
  "version" : "1.0.1",
  "name" : "BeClinicalImpression",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ClinicalImpression",
        "path" : "ClinicalImpression"
      },
      {
        "id" : "ClinicalImpression.subject",
        "path" : "ClinicalImpression.subject",
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
        "id" : "ClinicalImpression.assessor",
        "path" : "ClinicalImpression.assessor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ]
      }
    ]
  }
}

```
