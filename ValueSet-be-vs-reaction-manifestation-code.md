# Reaction Manifestation Code - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reaction Manifestation Code**

## ValueSet: Reaction Manifestation Code 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-reaction-manifestation-code | *Version*:1.0.1 | |
| Active as of 2021-01-10 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeVSReactionManifestationCode |

 
Reaction Manifestation Code (Allergy - Immunization) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "be-vs-reaction-manifestation-code",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-reaction-manifestation-code",
  "version" : "1.0.1",
  "name" : "BeVSReactionManifestationCode",
  "title" : "Reaction Manifestation Code",
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
  "description" : "Reaction Manifestation Code (Allergy - Immunization)",
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
            "code" : "39579001"
          },
          {
            "code" : "735173007"
          },
          {
            "code" : "41291007"
          },
          {
            "code" : "410430005"
          },
          {
            "code" : "698247007"
          },
          {
            "code" : "195967001"
          },
          {
            "code" : "4386001"
          },
          {
            "code" : "9826008"
          },
          {
            "code" : "91175000"
          },
          {
            "code" : "40275004"
          },
          {
            "code" : "62315008"
          },
          {
            "code" : "267036007"
          },
          {
            "code" : "43116000"
          },
          {
            "code" : "271759003"
          },
          {
            "code" : "247472004"
          },
          {
            "code" : "271807003"
          },
          {
            "code" : "271757001"
          },
          {
            "code" : "297942002"
          },
          {
            "code" : "76067001"
          },
          {
            "code" : "386661006"
          },
          {
            "code" : "45007003"
          },
          {
            "code" : "422587007"
          },
          {
            "code" : "768962006"
          },
          {
            "code" : "51599000"
          },
          {
            "code" : "23924001"
          },
          {
            "code" : "418363000"
          },
          {
            "code" : "70076002"
          },
          {
            "code" : "162290004"
          },
          {
            "code" : "73442001"
          },
          {
            "code" : "49727002"
          },
          {
            "code" : "126485001"
          },
          {
            "code" : "31996006"
          },
          {
            "code" : "1985008"
          }
        ]
      }
    ]
  }
}

```
