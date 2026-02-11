# BeExtBodyTopography - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeExtBodyTopography**

## Extension: BeExtBodyTopography 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography | *Version*:1.0.1 | |
| Active as of 2026-02-11 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeExtBodyTopography |

Describes the location or relative position on the body, such as superior/inferior, medial/lateral or internal/external.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeClinicalObservation](StructureDefinition-be-clinical-observation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-ext-body-topography)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-ext-body-topography.csv), [Excel](StructureDefinition-be-ext-body-topography.xlsx), [Schematron](StructureDefinition-be-ext-body-topography.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-body-topography",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography",
  "version" : "1.0.1",
  "name" : "BeExtBodyTopography",
  "title" : "BeExtBodyTopography",
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
  "description" : "Describes the location or relative position on the body, such as superior/inferior, medial/lateral or internal/external.",
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
      "expression" : "Condition.bodySite"
    },
    {
      "type" : "element",
      "expression" : "Observation.bodySite"
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
        "short" : "BeExtBodyTopography",
        "definition" : "Describes the location or relative position on the body, such as superior/inferior, medial/lateral or internal/external."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/BeVSBodyTopography"
        }
      }
    ]
  }
}

```
