# Device Type Value Set - Clinical Core v1.1.0

## ValueSet: Device Type Value Set 

 
Device Type - placeholder valueset - the normative definition will be published in the Belgian terminology IG. 

 **References** 

* [Device Logical Model](StructureDefinition-BeModelDevice.md)
* [BeDevice](StructureDefinition-be-device.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "DeviceTypeVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-type",
  "version" : "1.1.0",
  "name" : "DeviceTypeVS",
  "title" : "Device Type Value Set",
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
  "description" : "Device Type - placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "49062001"
      }]
    }]
  }
}

```
