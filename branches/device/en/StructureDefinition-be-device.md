# BeDevice - Clinical Core v1.1.0

## Resource Profile: BeDevice 

 
A medical device used in the context of Belgian healthcare. 

**Usages:**

* Refer to this Profile: [BeDeviceUseStatement](StructureDefinition-be-device-use-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/be-device)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-device.csv), [Excel](../StructureDefinition-be-device.xlsx), [Schematron](../StructureDefinition-be-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-device",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-device",
  "version" : "1.1.0",
  "name" : "BeDevice",
  "title" : "BeDevice",
  "status" : "active",
  "date" : "2026-04-29T10:42:49+00:00",
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
  "description" : "A medical device used in the context of Belgian healthcare.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.definition",
      "path" : "Device.definition",
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier",
      "path" : "Device.udiCarrier",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier.deviceIdentifier",
      "path" : "Device.udiCarrier.deviceIdentifier",
      "mustSupport" : true
    },
    {
      "id" : "Device.udiCarrier.carrierHRF",
      "path" : "Device.udiCarrier.carrierHRF",
      "mustSupport" : true
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "mustSupport" : true
    },
    {
      "id" : "Device.statusReason",
      "path" : "Device.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "mustSupport" : true
    },
    {
      "id" : "Device.manufactureDate",
      "path" : "Device.manufactureDate",
      "mustSupport" : true
    },
    {
      "id" : "Device.expirationDate",
      "path" : "Device.expirationDate",
      "mustSupport" : true
    },
    {
      "id" : "Device.lotNumber",
      "path" : "Device.lotNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.serialNumber",
      "path" : "Device.serialNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.modelNumber",
      "path" : "Device.modelNumber",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-type"
      }
    },
    {
      "id" : "Device.version",
      "path" : "Device.version",
      "mustSupport" : true
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "mustSupport" : true
    },
    {
      "id" : "Device.patient",
      "path" : "Device.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.note",
      "path" : "Device.note",
      "mustSupport" : true
    }]
  }
}

```
