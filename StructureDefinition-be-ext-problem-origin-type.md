# BeExtProblemOriginType - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeExtProblemOriginType**

## Extension: BeExtProblemOriginType 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-problem-origin-type | *Version*:1.0.1 | |
| Active as of 2026-02-11 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeExtProblemOriginType |

The type of event that triggers the problem to be evaluated - whether the problem was reported from a referring GP, etc…

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeProblem](StructureDefinition-be-problem.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-ext-problem-origin-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-ext-problem-origin-type.csv), [Excel](StructureDefinition-be-ext-problem-origin-type.xlsx), [Schematron](StructureDefinition-be-ext-problem-origin-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-problem-origin-type",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-problem-origin-type",
  "version" : "1.0.1",
  "name" : "BeExtProblemOriginType",
  "title" : "BeExtProblemOriginType",
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
  "description" : "The type of event that triggers the problem to be evaluated - whether the problem was reported from a referring GP, etc...",
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
      "expression" : "Condition"
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
        "short" : "BeExtProblemOriginType",
        "definition" : "The type of event that triggers the problem to be evaluated - whether the problem was reported from a referring GP, etc..."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-problem-origin-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-problem-origin-type"
        }
      }
    ]
  }
}

```
