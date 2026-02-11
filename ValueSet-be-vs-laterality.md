# Laterality - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laterality**

## ValueSet: Laterality 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-laterality | *Version*:1.0.1 | |
| Active as of 2021-01-10 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeVSLaterality |

 
Laterality 

 **References** 

* [BeExtLaterality](StructureDefinition-be-ext-laterality.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-laterality",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-laterality",
  "version" : "1.0.1",
  "name" : "BeVSLaterality",
  "title" : "Laterality",
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
  "description" : "Laterality",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "7771000"
          },
          {
            "code" : "24028007"
          },
          {
            "code" : "419161000"
          },
          {
            "code" : "419465000"
          },
          {
            "code" : "51440002"
          },
          {
            "code" : "261183002"
          },
          {
            "code" : "261122009"
          },
          {
            "code" : "255561001"
          },
          {
            "code" : "49370004"
          },
          {
            "code" : "264217000"
          },
          {
            "code" : "261089000"
          },
          {
            "code" : "255551008"
          },
          {
            "code" : "351726001"
          },
          {
            "code" : "352730000"
          }
        ]
      }
    ]
  }
}

```
