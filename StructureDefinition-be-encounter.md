# BeEncounter - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeEncounter**

## Resource Profile: BeEncounter 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-encounter | *Version*:1.0.1 |
| Active as of 2026-02-11 | *Computable Name*:BeEncounter |

 
Placeholder profile for contextualising the FHIR resource 

**Usages:**

* Refer to this Profile: [BeCarePlan](StructureDefinition-BeCarePlan.md), [BeEncounter](StructureDefinition-be-encounter.md) and [BeServiceRequest](StructureDefinition-be-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-encounter.csv), [Excel](StructureDefinition-be-encounter.xlsx), [Schematron](StructureDefinition-be-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-encounter",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-encounter",
  "version" : "1.0.1",
  "name" : "BeEncounter",
  "title" : "BeEncounter",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
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
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "short" : "*TODO* RelatedPerson -> BeRelatedPerson",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.reasonReference",
        "path" : "Encounter.reasonReference",
        "short" : "*TODO* Condition -> BeCondition, Procedure -> BeProcedure, Observation -> BeObservation"
      },
      {
        "id" : "Encounter.diagnosis.condition",
        "path" : "Encounter.diagnosis.condition",
        "short" : "*TODO* Condition -> BeCondition, Procedure -> BeProcedure"
      },
      {
        "id" : "Encounter.hospitalization.origin",
        "path" : "Encounter.hospitalization.origin",
        "short" : "*TODO* Location -> BeLocation",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Location",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "short" : "*TODO* Location -> BeLocation",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Location",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.location.location",
        "path" : "Encounter.location.location",
        "short" : "*TODO* Location -> BeLocation"
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
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
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-encounter"
            ]
          }
        ]
      }
    ]
  }
}

```
