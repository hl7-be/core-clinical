# Condition Disease Course Value Set - Clinical Core v1.1.0

## ValueSet: Condition Disease Course Value Set 

 
Condition Disease Course 

 **References** 

* [Problem Logical Model](StructureDefinition-BeModelProblem.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ProblemDiseaseCourseVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/ProblemDiseaseCourseVS",
  "version" : "1.1.0",
  "name" : "ProblemDiseaseCourseVS",
  "title" : "Condition Disease Course Value Set",
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
  "description" : "Condition Disease Course",
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
        "value" : "288524001"
      }]
    }]
  }
}

```
