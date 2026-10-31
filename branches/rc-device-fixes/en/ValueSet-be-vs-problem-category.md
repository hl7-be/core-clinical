# Problem Category ValueSet - Clinical Core v1.4.0

## ValueSet: Problem Category ValueSet 

 **References** 

* [Problem Logical Model](StructureDefinition-BeModelProblem.md)
* [BeProblem](StructureDefinition-be-problem.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-problem-category",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-problem-category",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.5.48.8"
  }],
  "version" : "1.4.0",
  "name" : "BeVSProblemCategory",
  "title" : "Problem Category ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-16T06:59:25+00:00",
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
  "description" : "Problem Category - placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-problem-category"
    }]
  }
}

```
