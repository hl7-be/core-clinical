# BeEpisodeOfCare model - Clinical Core v1.2.0

## Logical Model: BeEpisodeOfCare model 

 
Logical model for the EpisodeOfCare CareSet - represents a period during which care related to a specific goal or problem is provided to a patient by one or more healthcare providers and/or organizations. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-BeModelEpisodeOfCare.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelEpisodeOfCare.csv), [Excel](../StructureDefinition-BeModelEpisodeOfCare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelEpisodeOfCare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelEpisodeOfCare",
  "version" : "1.2.0",
  "name" : "BeModelEpisodeOfCare",
  "title" : "BeEpisodeOfCare model",
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
  "description" : "Logical model for the EpisodeOfCare CareSet - represents a period during which care related to a specific goal or problem is provided to a patient by one or more healthcare providers and/or organizations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelEpisodeOfCare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelEpisodeOfCare",
      "path" : "BeModelEpisodeOfCare",
      "short" : "BeEpisodeOfCare model",
      "definition" : "Logical model for the EpisodeOfCare CareSet - represents a period during which care related to a specific goal or problem is provided to a patient by one or more healthcare providers and/or organizations."
    },
    {
      "id" : "BeModelEpisodeOfCare.identifier",
      "path" : "BeModelEpisodeOfCare.identifier",
      "short" : "Unique Business Identifier of the CareSet",
      "definition" : "Unique Business Identifier of the CareSet",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.patient",
      "path" : "BeModelEpisodeOfCare.patient",
      "short" : "The person who is the subject of the healthcare to which the record refers (NISS, BIS or other authorised identification)",
      "definition" : "The person who is the subject of the healthcare to which the record refers (NISS, BIS or other authorised identification)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.recordedDate",
      "path" : "BeModelEpisodeOfCare.recordedDate",
      "short" : "Recording date by the Author or Recorder (date of last update)",
      "definition" : "Enables CareSet history management via the pair Business Identifier - RecordedDate, which guarantees access to the latest version of the content",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.status",
      "path" : "BeModelEpisodeOfCare.status",
      "short" : "Current status of the episode",
      "definition" : "planned | active | onhold | finished | cancelled | entered-in-error",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/episode-of-care-status"
      }
    },
    {
      "id" : "BeModelEpisodeOfCare.author[x]",
      "path" : "BeModelEpisodeOfCare.author[x]",
      "short" : "The healthcare professional who takes responsibility for the recorded content",
      "definition" : "The healthcare professional who takes responsibility for the recorded content",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.period",
      "path" : "BeModelEpisodeOfCare.period",
      "short" : "The period between the moment the resource is created to group the provided care and the moment it ends, when the reason for its creation disappears or the goal is reached",
      "definition" : "The period between the moment the resource is created to group the provided care and the moment it ends, when the reason for its creation disappears or the goal is reached",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.reason[x]",
      "path" : "BeModelEpisodeOfCare.reason[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "The problem treated during the EpisodeOfCare",
      "definition" : "The problem treated during the EpisodeOfCare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.reason[x]:reasonCodeableConcept",
      "path" : "BeModelEpisodeOfCare.reason[x]",
      "sliceName" : "reasonCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-reason"
      }
    },
    {
      "id" : "BeModelEpisodeOfCare.note",
      "path" : "BeModelEpisodeOfCare.note",
      "short" : "Optional additional remark",
      "definition" : "Optional additional remark",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.careTeam",
      "path" : "BeModelEpisodeOfCare.careTeam",
      "short" : "CareTeam involved in the care carried out within this EpisodeOfCare",
      "definition" : "CareTeam involved in the care carried out within this EpisodeOfCare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEpisodeOfCare.managingOrganization",
      "path" : "BeModelEpisodeOfCare.managingOrganization",
      "short" : "Organization responsible for the management and coordination of the patient's EpisodeOfCare",
      "definition" : "Organization responsible for the management and coordination of the patient's EpisodeOfCare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
