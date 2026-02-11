# BodySite Model - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BodySite Model**

## Logical Model: BodySite Model 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite | *Version*:1.0.1 |
| Active as of 2026-02-11 | *Computable Name*:BeModelBodySite |

 
Body site model 

**Usages:**

* Use this Logical Model: [BeClinicalObservation Model](StructureDefinition-BeModelClinicalObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelBodySite)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelBodySite.csv), [Excel](StructureDefinition-BeModelBodySite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelBodySite",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite",
  "version" : "1.0.1",
  "name" : "BeModelBodySite",
  "title" : "BodySite Model",
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
  "description" : "Body site model",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelBodySite",
        "path" : "BeModelBodySite",
        "short" : "BodySite Model",
        "definition" : "Body site model"
      },
      {
        "id" : "BeModelBodySite.bodyLocation",
        "path" : "BeModelBodySite.bodyLocation",
        "short" : "Code that identifies the anatomical location of the specimen on the subject's body",
        "definition" : "Code that identifies the anatomical location of the specimen on the subject's body",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelBodySite.bodyLaterality",
        "path" : "BeModelBodySite.bodyLaterality",
        "short" : "The laterality of a body site - the side of the body",
        "definition" : "The laterality of a body site - the side of the body",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelBodySite.bodyTopography",
        "path" : "BeModelBodySite.bodyTopography",
        "short" : "The topography of the location of the specimen on the subject's body",
        "definition" : "The topography of the location of the specimen on the subject's body",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
