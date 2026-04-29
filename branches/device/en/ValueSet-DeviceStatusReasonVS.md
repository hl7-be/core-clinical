# Device Status Reason Value Set - Clinical Core v1.1.0

## ValueSet: Device Status Reason Value Set 

 
Device Status Reason - placeholder valueset - the normative definition will be published in the Belgian terminology IG. 

 **References** 

* [Device Logical Model](StructureDefinition-BeModelDevice.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "DeviceStatusReasonVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-status-reason",
  "version" : "1.1.0",
  "name" : "DeviceStatusReasonVS",
  "title" : "Device Status Reason Value Set",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Device Status Reason - placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/device-status-reason",
      "version" : "2.0.0"
    }]
  }
}

```
