# BeVSDiabetesObservationCategory - Clinical Core v1.1.0

## ValueSet: BeVSDiabetesObservationCategory 

 
Values to be used in the categorisation of Diabetes observations 

 **References** 

* [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-diabetes-observation-category",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-diabetes-observation-category",
  "version" : "1.1.0",
  "name" : "BeVSDiabetesObservationCategory",
  "title" : "BeVSDiabetesObservationCategory",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-10T20:58:27+00:00",
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
  "description" : "Values to be used in the categorisation of Diabetes observations",
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
      "concept" : [{
        "code" : "439926003"
      },
      {
        "code" : "258104002"
      },
      {
        "code" : "258090004"
      }]
    }]
  }
}

```
