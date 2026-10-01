# EpisodeOfCare Status - Clinical Core v1.2.0

## ValueSet: EpisodeOfCare Status 

 
EpisodeOfCare Status - placeholder valueset - the normative definition will be published in the Belgian terminology IG. 

 **References** 

* [BeEpisodeOfCare model](StructureDefinition-BeModelEpisodeOfCare.md)
* [BeEpisodeOfCare](StructureDefinition-be-episode-of-care.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-episode-of-care-status",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-episode-of-care-status",
  "version" : "1.2.0",
  "name" : "BeVSEpisodeOfCareStatus",
  "title" : "EpisodeOfCare Status",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-01T17:04:36+00:00",
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
  "description" : "EpisodeOfCare Status - placeholder valueset - the normative definition will be published in the Belgian terminology IG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/episode-of-care-status",
      "concept" : [{
        "code" : "active",
        "display" : "Active"
      },
      {
        "code" : "onhold",
        "display" : "On Hold"
      },
      {
        "code" : "finished",
        "display" : "Finished"
      },
      {
        "code" : "entered-in-error",
        "display" : "Entered in Error"
      }]
    }]
  }
}

```
