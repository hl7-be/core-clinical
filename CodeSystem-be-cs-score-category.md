# Score Category - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Score Category**

## CodeSystem: Score Category 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score-category | *Version*:1.0.1 | |
| Active as of 2021-01-10 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeCSScoreCategory |

 
Score Category 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BeVSScoreCategory](ValueSet-be-vs-scorecategory.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-score-category",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score-category",
  "version" : "1.0.1",
  "name" : "BeCSScoreCategory",
  "title" : "Score Category",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Score Category",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "risk",
      "display" : "Risk score",
      "definition" : "Risk score",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Risk score"
        },
        {
          "language" : "nl-BE",
          "value" : "Risk score"
        }
      ]
    },
    {
      "code" : "pain",
      "display" : "Pain score",
      "definition" : "Pain score",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Pain Score"
        },
        {
          "language" : "nl-BE",
          "value" : "Pain Score"
        }
      ]
    },
    {
      "code" : "other",
      "display" : "Other",
      "definition" : "Other",
      "designation" : [
        {
          "language" : "fr-BE",
          "value" : "Autre"
        },
        {
          "language" : "nl-BE",
          "value" : "andere"
        }
      ]
    }
  ]
}

```
