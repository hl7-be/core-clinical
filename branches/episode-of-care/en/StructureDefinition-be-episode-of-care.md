# BeEpisodeOfCare - Clinical Core v1.2.0

## Resource Profile: BeEpisodeOfCare 

 
A period during which care related to one specific goal or problem is provided to a patient by one or more healthcare providers or organisations. The EpisodeOfCare is the container other CareSets (for example Encounter, CareTeam) are linked to; it carries no clinical content itself. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-be-episode-of-care.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-episode-of-care.csv), [Excel](../StructureDefinition-be-episode-of-care.xlsx), [Schematron](../StructureDefinition-be-episode-of-care.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-episode-of-care",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-episode-of-care",
  "version" : "1.2.0",
  "name" : "BeEpisodeOfCare",
  "title" : "BeEpisodeOfCare",
  "status" : "active",
  "date" : "2026-08-31T14:48:40+00:00",
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
  "description" : "A period during which care related to one specific goal or problem is provided to a patient by one or more healthcare providers or organisations. The EpisodeOfCare is the container other CareSets (for example Encounter, CareTeam) are linked to; it carries no clinical content itself.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare"
    },
    {
      "id" : "EpisodeOfCare.extension",
      "path" : "EpisodeOfCare.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "EpisodeOfCare.extension:recordedDate",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "recordedDate",
      "short" : "RecordedDate",
      "definition" : "Recording date by the Author or Recorder (date of the last update). Enables CareSet history management through the pair Business Identifier - RecordedDate, which guarantees access to the latest version of the content.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorded-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.extension:author",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "author",
      "short" : "Author",
      "definition" : "The healthcare professional who takes responsibility for the recorded content.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.extension:note",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "note",
      "short" : "Note",
      "definition" : "Optional additional remark.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-simple-note"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.status",
      "path" : "EpisodeOfCare.status",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.diagnosis",
      "path" : "EpisodeOfCare.diagnosis",
      "short" : "Reason - the problem treated during the EpisodeOfCare",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.diagnosis.condition",
      "path" : "EpisodeOfCare.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-problem"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.diagnosis.condition.extension:code",
      "path" : "EpisodeOfCare.diagnosis.condition.extension",
      "sliceName" : "code",
      "short" : "Coded reason",
      "definition" : "The problem treated during the EpisodeOfCare, as a code, for when no BeProblem resource is referenced.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.period",
      "path" : "EpisodeOfCare.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.team",
      "path" : "EpisodeOfCare.team",
      "short" : "*TODO* CareTeam -> BeCareTeam",
      "definition" : "CareTeam involved in the care carried out within this EpisodeOfCare.",
      "mustSupport" : true
    }]
  }
}

```
