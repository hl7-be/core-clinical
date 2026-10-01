# BelRAI Score Value Set - Clinical Core v1.2.0

## ValueSet: BelRAI Score Value Set 

 
Codes identifying each BelRAI scoring scale/screener, used as Observation.code (BeScoreResult). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-belrai-score",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-belrai-score",
  "version" : "1.2.0",
  "name" : "BeVSBelraiScore",
  "title" : "BelRAI Score Value Set",
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
  "description" : "Codes identifying each BelRAI scoring scale/screener, used as Observation.code (BeScoreResult).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-belrai-score"
    }]
  }
}

```
