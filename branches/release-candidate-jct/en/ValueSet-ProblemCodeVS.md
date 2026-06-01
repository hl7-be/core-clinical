# Problem Code Value Set - Clinical Core v1.2.0

## ValueSet: Problem Code Value Set (Experimental) 

 
Code of the problem (this is a demonstrative valueset) 

 **References** 

* [Problem Logical Model](StructureDefinition-BeModelProblem.md)

### Logical Definition (CLD)

No formal definition provided for this value set

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ProblemCodeVS",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/ProblemCodeVS",
  "version" : "1.2.0",
  "name" : "ProblemCodeVS",
  "title" : "Problem Code Value Set",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-05-30T09:08:57+00:00",
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
  "description" : "Code of the problem (this is a demonstrative valueset)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }]
}

```
