# BeDeviceUseStatement - Clinical Core v1.1.0

## Resource Profile: BeDeviceUseStatement 

 
A record of a device being used by a patient in the context of Belgian healthcare. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-device-use-statement)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-device-use-statement.csv), [Excel](../StructureDefinition-be-device-use-statement.xlsx), [Schematron](../StructureDefinition-be-device-use-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-device-use-statement",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-device-use-statement",
  "version" : "1.1.0",
  "name" : "BeDeviceUseStatement",
  "title" : "BeDeviceUseStatement",
  "status" : "active",
  "date" : "2026-05-05T08:40:14+00:00",
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
  "description" : "A record of a device being used by a patient in the context of Belgian healthcare.",
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceUseStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DeviceUseStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DeviceUseStatement",
      "path" : "DeviceUseStatement"
    },
    {
      "id" : "DeviceUseStatement.identifier",
      "path" : "DeviceUseStatement.identifier",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.basedOn",
      "path" : "DeviceUseStatement.basedOn",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.status",
      "path" : "DeviceUseStatement.status",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.subject",
      "path" : "DeviceUseStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.derivedFrom",
      "path" : "DeviceUseStatement.derivedFrom",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.timing[x]",
      "path" : "DeviceUseStatement.timing[x]",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.recordedOn",
      "path" : "DeviceUseStatement.recordedOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.source",
      "path" : "DeviceUseStatement.source",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.device",
      "path" : "DeviceUseStatement.device",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.reasonCode",
      "path" : "DeviceUseStatement.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.reasonReference",
      "path" : "DeviceUseStatement.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-problem",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/Media"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DeviceUseStatement.bodySite",
      "path" : "DeviceUseStatement.bodySite",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-bodysite"
      }
    },
    {
      "id" : "DeviceUseStatement.bodySite.extension:laterality",
      "path" : "DeviceUseStatement.bodySite.extension",
      "sliceName" : "laterality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-laterality"]
      }]
    },
    {
      "id" : "DeviceUseStatement.bodySite.extension:topography",
      "path" : "DeviceUseStatement.bodySite.extension",
      "sliceName" : "topography",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-body-topography"]
      }]
    },
    {
      "id" : "DeviceUseStatement.note",
      "path" : "DeviceUseStatement.note",
      "mustSupport" : true
    }]
  }
}

```
