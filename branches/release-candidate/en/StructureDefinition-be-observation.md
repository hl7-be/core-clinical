# BeObservation - Clinical Core v1.2.0

## Resource Profile: BeObservation 

 
Belgian federal profile for an observation. Initially based on the functional description of the NIHDI. As Observation is used in many instances in FHIR, please refer to the HL7 specs of the base resource for guidance around expression of actual values using UCUM, methods, location on body etc. 
Special remarks for KMEHR users: The FHIR Observation resource captures many things that are in a KMEHR message structured as an ‘item’. This includes things like ‘vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, or cognitive status […]’ ( https://www.hl7.org/fhir/R4/observation.html ) For some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html 

 This profile is deprecated and should not be used. For clinical observations, please use the existing profile - [ BeClinicalObservation](StructureDefinition-be-clinical-observation.md). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-observation)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-observation.csv), [Excel](../StructureDefinition-be-observation.xlsx), [Schematron](../StructureDefinition-be-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "deprecated"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation",
  "version" : "1.2.0",
  "name" : "BeObservation",
  "status" : "retired",
  "date" : "2026-05-07T07:13:57+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be"
    },
    {
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be"
    }]
  },
  {
    "name" : "Message-Structure",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "Belgian federal profile for an observation. Initially based on the functional description of the NIHDI.\nAs Observation is used in many instances in FHIR, please refer to the HL7 specs of the base resource for guidance around expression of actual values using UCUM, methods, location on body etc.\n\nSpecial remarks for KMEHR users:\nThe FHIR Observation resource captures many things that are in a KMEHR message structured as an 'item'. This includes things like 'vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, or cognitive status […]' ( https://www.hl7.org/fhir/R4/observation.html )\nFor some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "definition" : "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nFor providing systems, it is RECOMMENDED to express this using a code and consuming software SHALL record this.\r\nIn general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observationcodeableconcept"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Location",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "comment" : "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\nSpecial remarks for KMEHR users:\r\nIn a KMEHR context, this would be 'author'.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"]
      }]
    }]
  }
}

```
