# BeProcedure - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeProcedure**

## Resource Profile: BeProcedure 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-procedure | *Version*:1.0.1 |
| Active as of 2026-02-11 | *Computable Name*:BeProcedure |

 
Placeholder profile for contextualising the FHIR resource 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-procedure.csv), [Excel](StructureDefinition-be-procedure.xlsx), [Schematron](StructureDefinition-be-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-procedure",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-procedure",
  "version" : "1.0.1",
  "name" : "BeProcedure",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.recorder",
        "path" : "Procedure.recorder",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.asserter",
        "path" : "Procedure.asserter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.performer.actor",
        "path" : "Procedure.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
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
