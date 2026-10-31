# Laterality ValueSet - Clinical Core v1.4.0

## ValueSet: Laterality ValueSet 

 **References** 

* [DeviceUseStatement Logical Model](StructureDefinition-BeModelDeviceUseStatement.md)
* [Problem Logical Model](StructureDefinition-BeModelProblem.md)
* [BeExtLaterality](StructureDefinition-be-ext-laterality.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-laterality",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-laterality",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.5.48.7"
  }],
  "version" : "1.4.0",
  "name" : "BeVSLaterality",
  "title" : "Laterality ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-16T07:00:23+00:00",
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
  "description" : "Laterality - placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "7771000"
      },
      {
        "code" : "24028007"
      },
      {
        "code" : "51440002"
      }]
    }]
  }
}

```
