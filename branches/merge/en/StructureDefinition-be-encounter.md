# BeEncounter - Clinical Core v1.2.0

## Resource Profile: BeEncounter 

 
A physical or virtual contact or interaction between a patient and one or more healthcare providers or a care organisation. 

**Usages:**

* Refer to this Profile: [BeEncounter](StructureDefinition-be-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-be-encounter.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-encounter.csv), [Excel](../StructureDefinition-be-encounter.xlsx), [Schematron](../StructureDefinition-be-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-encounter",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-encounter",
  "version" : "1.2.0",
  "name" : "BeEncounter",
  "title" : "BeEncounter",
  "status" : "active",
  "date" : "2026-08-18T14:30:46+00:00",
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
  "description" : "A physical or virtual contact or interaction between a patient and one or more healthcare providers or a care organisation.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
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
      "id" : "Encounter.extension:recordedDate",
      "path" : "Encounter.extension",
      "sliceName" : "recordedDate",
      "short" : "RecordedDate",
      "definition" : "Date of registration by the Author/Recorder (date of the last update). Enables CareSet history management through the pair Business Identifier - RecordedDate, which guarantees access to the latest version of the content.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorded-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:recorder",
      "path" : "Encounter.extension",
      "sliceName" : "recorder",
      "short" : "Author",
      "definition" : "The health professional who takes responsibility for the recorded content.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:additionalServiceType",
      "path" : "Encounter.extension",
      "sliceName" : "additionalServiceType",
      "short" : "Additional service type",
      "definition" : "Further types of services/specialisations offered during the Encounter, in addition to Encounter.serviceType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeableconcept"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:basedOn",
      "path" : "Encounter.extension",
      "sliceName" : "basedOn",
      "short" : "BasedOn",
      "definition" : "The request that initiated this Encounter. In this case it can only originate from a CarePlan.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-ext-encounter-basedon"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:careTeam",
      "path" : "Encounter.extension",
      "sliceName" : "careTeam",
      "short" : "*TODO* CareTeam -> BeCareTeam",
      "definition" : "Reference to the CareTeam resource recording which team is involved in the care during this Encounter.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.careTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:diagnosis",
      "path" : "Encounter.extension",
      "sliceName" : "diagnosis",
      "short" : "Diagnosis",
      "definition" : "List of diagnoses relevant for this Encounter.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.extension:diagnosis.extension:reference",
      "path" : "Encounter.extension.extension",
      "sliceName" : "reference"
    },
    {
      "id" : "Encounter.extension:diagnosis.extension:reference.value[x]",
      "path" : "Encounter.extension.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-problem"]
      }]
    },
    {
      "id" : "Encounter.extension:note",
      "path" : "Encounter.extension",
      "sliceName" : "note",
      "short" : "Note",
      "definition" : "Additional information related to the CareSet content in free text form.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-simple-note"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "short" : "*TODO* EpisodeOfCare -> BeEpisodeOfCare",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "short" : "Role of the Participant involved in this Encounter",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.period",
      "path" : "Encounter.participant.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "short" : "ActualPeriod - the effective start and end moments of this Encounter",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.length",
      "path" : "Encounter.length",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "short" : "*TODO* Condition -> BeProblem, Procedure -> BeProcedure, Observation -> BeObservation",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-problem"]
      }]
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "short" : "Admission - details about the admission of the patient to the care organisation",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.origin",
      "path" : "Encounter.hospitalization.origin",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.reAdmission",
      "path" : "Encounter.hospitalization.reAdmission",
      "short" : "Is this a re-admission of the patient? (R4 type is CodeableConcept)",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.destination",
      "path" : "Encounter.hospitalization.destination",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "short" : "*TODO* Location -> BeLocation"
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-encounter"]
      }],
      "mustSupport" : true
    }]
  }
}

```
