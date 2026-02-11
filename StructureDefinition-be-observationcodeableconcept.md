# BeObservationCodeableConcept - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeObservationCodeableConcept**

## Data Type Profile: BeObservationCodeableConcept 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observationcodeableconcept | *Version*:1.0.1 | |
| Active as of 2026-02-11 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeObservationCodeableConcept |

 
This is a supporting profile, only to give guidelines how to express a few of the typical coding systems. In general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.) 

**Usages:**

* Use this DataType Profile: [BeObservation](StructureDefinition-be-observation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-observationcodeableconcept)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-observationcodeableconcept.csv), [Excel](StructureDefinition-be-observationcodeableconcept.xlsx), [Schematron](StructureDefinition-be-observationcodeableconcept.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-observationcodeableconcept",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observationcodeableconcept",
  "version" : "1.0.1",
  "name" : "BeObservationCodeableConcept",
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
  "description" : "This is a supporting profile, only to give guidelines how to express a few of the typical coding systems.\nIn general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)",
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
      "identity" : "orim",
      "uri" : "http://hl7.org/orim",
      "name" : "Ontological RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CodeableConcept.coding",
        "path" : "CodeableConcept.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "CodeableConcept.coding:LOINC",
        "path" : "CodeableConcept.coding",
        "sliceName" : "LOINC",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "CodeableConcept.coding:LOINC.system",
        "path" : "CodeableConcept.coding.system",
        "min" : 1,
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "CodeableConcept.coding:LOINC.code",
        "path" : "CodeableConcept.coding.code",
        "min" : 1
      },
      {
        "id" : "CodeableConcept.coding:SNOMED-CT",
        "path" : "CodeableConcept.coding",
        "sliceName" : "SNOMED-CT",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "CodeableConcept.coding:SNOMED-CT.system",
        "path" : "CodeableConcept.coding.system",
        "min" : 1,
        "fixedUri" : "http://snomed.info/sct"
      },
      {
        "id" : "CodeableConcept.coding:SNOMED-CT.code",
        "path" : "CodeableConcept.coding.code",
        "min" : 1
      }
    ]
  }
}

```
