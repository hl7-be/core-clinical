# BeExtLaterality - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeExtLaterality**

## Extension: BeExtLaterality 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality | *Version*:1.0.1 | |
| Active as of 2026-02-11 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeExtLaterality |

An explicit statement of laterality of a lesion, or a treatment, etc.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeClinicalObservation](StructureDefinition-be-clinical-observation.md), [BeProblem](StructureDefinition-be-problem.md) and [BeScoreResult](StructureDefinition-be-scoreresult.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-ext-laterality)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-ext-laterality.csv), [Excel](StructureDefinition-be-ext-laterality.xlsx), [Schematron](StructureDefinition-be-ext-laterality.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-laterality",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality",
  "version" : "1.0.1",
  "name" : "BeExtLaterality",
  "title" : "BeExtLaterality",
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
  "description" : "An explicit statement of laterality of a lesion, or a treatment, etc.",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Claim.item.bodySite"
    },
    {
      "type" : "element",
      "expression" : "Condition.bodySite"
    },
    {
      "type" : "element",
      "expression" : "Immunization.site"
    },
    {
      "type" : "element",
      "expression" : "Observation.bodySite"
    },
    {
      "type" : "element",
      "expression" : "ServiceRequest.bodySite"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BeExtLaterality",
        "definition" : "An explicit statement of laterality of a lesion, or a treatment, etc."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-laterality"
        }
      }
    ]
  }
}

```
