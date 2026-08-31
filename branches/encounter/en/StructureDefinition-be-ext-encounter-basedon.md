# Encounter BasedOn - Clinical Core v1.2.0

## Extension: Encounter BasedOn 

The request that initiated this Encounter. R4 Encounter.basedOn only allows Reference(ServiceRequest); this extension carries the CareSet’s BasedOn, which refers to a CarePlan.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BeEncounter](StructureDefinition-be-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-be-ext-encounter-basedon.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-encounter-basedon.csv), [Excel](../StructureDefinition-be-ext-encounter-basedon.xlsx), [Schematron](../StructureDefinition-be-ext-encounter-basedon.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-encounter-basedon",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-encounter-basedon",
  "version" : "1.2.0",
  "name" : "BeExtEncounterBasedOn",
  "title" : "Encounter BasedOn",
  "status" : "active",
  "date" : "2026-08-18T14:30:19+00:00",
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
  "description" : "The request that initiated this Encounter. R4 Encounter.basedOn only allows Reference(ServiceRequest); this extension carries the CareSet's BasedOn, which refers to a CarePlan.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Encounter BasedOn",
      "definition" : "The request that initiated this Encounter. R4 Encounter.basedOn only allows Reference(ServiceRequest); this extension carries the CareSet's BasedOn, which refers to a CarePlan."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-encounter-basedon"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "*TODO* CarePlan -> BeCarePlan",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan"]
      }]
    }]
  }
}

```
