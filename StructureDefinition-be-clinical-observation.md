# BeClinicalObservation - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeClinicalObservation**

## Resource Profile: BeClinicalObservation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation | *Version*:1.0.1 | |
| Active as of 2026-02-11 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeClinicalObservation |

 
Belgian federal profile for a clinical observation. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-clinical-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-clinical-observation.csv), [Excel](StructureDefinition-be-clinical-observation.xlsx), [Schematron](StructureDefinition-be-clinical-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-clinical-observation",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-clinical-observation",
  "version" : "1.0.1",
  "name" : "BeClinicalObservation",
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
  "description" : "Belgian federal profile for a clinical observation.",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "mustSupport" : true
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "mustSupport" : true
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "definition" : "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nFor providing systems, it is RECOMMENDED to express this using a code and consuming software SHALL record this.\r\nIn general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "http://hl7.org/fhir/StructureDefinition/Group",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/Location"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "mustSupport" : true
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "comment" : "When the specific performer is not known, the organisation can be used. \nWhen a device is creating the entry, `.device` should identify the device, and `.performer` should identify the person responsible for (using) the device, e.g. the professional or patient.\nIn cases where the performer is known but there is no resource or unique identifier, the reference.display can be used - although this should be avoided.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "mustSupport" : true
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "mustSupport" : true
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "mustSupport" : true
      },
      {
        "id" : "Observation.bodySite.extension:laterality",
        "path" : "Observation.bodySite.extension",
        "sliceName" : "laterality",
        "short" : "Body laterality",
        "definition" : "Specifies the laterality of the body where the procedure was performed if this precision is not contained in the code (right, left, both).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.bodySite.extension:topography",
        "path" : "Observation.bodySite.extension",
        "sliceName" : "topography",
        "short" : "Body topography",
        "definition" : "Describes the location or relative position of the procedure on the body, such as superior/inferior, medial/lateral or internal/external.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "mustSupport" : true
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "mustSupport" : true
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "mustSupport" : true
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "mustSupport" : true
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "mustSupport" : true
      }
    ]
  }
}

```
