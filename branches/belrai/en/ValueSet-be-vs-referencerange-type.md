# Reference Range Type Value Set - Clinical Core v1.2.0

## ValueSet: Reference Range Type Value Set 

 
Values for BeScoreResult.referenceRange.type: a band defined by the scale (possible-range) or the band the result falls into (found-range). 

 **References** 

* [BeScoreResult](StructureDefinition-be-scoreresult.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-referencerange-type",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-referencerange-type",
  "version" : "1.2.0",
  "name" : "BeVSReferenceRangeType",
  "title" : "Reference Range Type Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-16T15:39:29+00:00",
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
  "description" : "Values for BeScoreResult.referenceRange.type: a band defined by the scale (possible-range) or the band the result falls into (found-range).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-referencerange-type"
    }]
  }
}

```
