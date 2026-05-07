# BeVSBodyTopography - Clinical Core v1.1.0

## ValueSet: BeVSBodyTopography 

 
Body topography value set - describes the location or relative position on the body (e.g., superior/inferior, medial/lateral, internal/external). Placeholder valueset - the normative definition will be published in the Belgian terminology IG. 

 **References** 

* [Problem Logical Model](StructureDefinition-BeModelProblem.md)
* [BeExtBodyTopography](StructureDefinition-be-ext-body-topography.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-body-topography",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography",
  "version" : "1.1.0",
  "name" : "BeVSBodyTopography",
  "title" : "BeVSBodyTopography",
  "status" : "draft",
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
  "description" : "Body topography value set - describes the location or relative position on the body (e.g., superior/inferior, medial/lateral, internal/external). Placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
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
        "value" : "106233006"
      }]
    }]
  }
}

```
