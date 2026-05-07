# Device Status Value Set - Clinical Core v1.1.0

## ValueSet: Device Status Value Set 

 
Device Status - placeholder valueset - the normative definition will be published in the Belgian terminology IG. 

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
  "id" : "DeviceStatusVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-status",
  "version" : "1.1.0",
  "name" : "DeviceStatusVS",
  "title" : "Device Status Value Set",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Device Status - placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/device-status",
      "version" : "5.0.0",
      "concept" : [{
        "code" : "active",
        "display" : "Active"
      },
      {
        "code" : "inactive",
        "display" : "Inactive"
      },
      {
        "code" : "entered-in-error",
        "display" : "Entered in Error"
      },
      {
        "code" : "unknown",
        "display" : "Unknown"
      }]
    }]
  }
}

```
