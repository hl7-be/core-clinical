# Reference Range Type - Clinical Core v1.2.0

## CodeSystem: Reference Range Type 

 
The meaning of an Observation.referenceRange for a score: a band defined by the scale, or the band the result falls into. Deliberately valence-free (no ‘normal’/’high’/’elevated’). 

This Code system is referenced in the definition of the following value sets:

* [BeVSReferenceRangeType](ValueSet-be-vs-referencerange-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-referencerange-type",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-referencerange-type",
  "version" : "1.2.0",
  "name" : "BeCSReferenceRangeType",
  "title" : "Reference Range Type",
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
  "description" : "The meaning of an Observation.referenceRange for a score: a band defined by the scale, or the band the result falls into. Deliberately valence-free (no 'normal'/'high'/'elevated').",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "possible-range",
    "display" : "Possible range",
    "definition" : "One of the bands the scale defines (documents the possible ranges of the score).",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Mogelijk bereik"
    },
    {
      "language" : "fr-BE",
      "value" : "Plage possible"
    }]
  },
  {
    "code" : "found-range",
    "display" : "Found range",
    "definition" : "The band this particular result falls into.",
    "designation" : [{
      "language" : "nl-BE",
      "value" : "Gevonden bereik"
    },
    {
      "language" : "fr-BE",
      "value" : "Plage constatée"
    }]
  }]
}

```
