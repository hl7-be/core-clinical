# BeEncounter Model - Clinical Core v1.2.0

## Logical Model: BeEncounter Model 

 
Administrative recording of a meeting between a patient and a practitioner/organisation, with references to clinical data. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-BeModelEncounter.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelEncounter.csv), [Excel](../StructureDefinition-BeModelEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelEncounter",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelEncounter",
  "version" : "1.2.0",
  "name" : "BeModelEncounter",
  "title" : "BeEncounter Model",
  "status" : "active",
  "date" : "2026-08-18T14:30:19+00:00",
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
  "description" : "Administrative recording of a meeting between a patient and a practitioner/organisation, with references to clinical data.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelEncounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelEncounter",
      "path" : "BeModelEncounter",
      "short" : "BeEncounter Model",
      "definition" : "Administrative recording of a meeting between a patient and a practitioner/organisation, with references to clinical data."
    },
    {
      "id" : "BeModelEncounter.identifier",
      "path" : "BeModelEncounter.identifier",
      "short" : "Unique business identifier of the CareSet",
      "definition" : "Unique business identifier of the CareSet",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelEncounter.recordedDate",
      "path" : "BeModelEncounter.recordedDate",
      "short" : "Date of registration by the Author/Recorder (date of the last update).",
      "definition" : "Date of registration by the Author/Recorder (date of the last update). Enables CareSet history management through the pair Business Identifier - RecordedDate, which guarantees access to the latest version of the content",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelEncounter.author",
      "path" : "BeModelEncounter.author",
      "short" : "The health professional who takes responsibility for the recorded content",
      "definition" : "The health professional who takes responsibility for the recorded content",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.status",
      "path" : "BeModelEncounter.status",
      "short" : "Registration status, the moment in the lifecycle. For example: final, corrected, cancelled, entered-in-error. ValueSet: VS_Encounter_Status",
      "definition" : "Registration status, the moment in the lifecycle. For example: final, corrected, cancelled, entered-in-error. ValueSet: VS_Encounter_Status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "BeModelEncounter.class",
      "path" : "BeModelEncounter.class",
      "short" : "Classification of the type of Encounter. ValueSet: VS_Encounter_Class",
      "definition" : "Classification of the type of Encounter. ValueSet: VS_Encounter_Class",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEncounter.serviceType",
      "path" : "BeModelEncounter.serviceType",
      "short" : "Type of services/specialisation offered during the Encounter. ValueSet: VS_Encounter_ServiceType (see proposal VS_Be_ServiceType_Voorstel)",
      "definition" : "Type of services/specialisation offered during the Encounter. ValueSet: VS_Encounter_ServiceType (see proposal VS_Be_ServiceType_Voorstel)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEncounter.subject",
      "path" : "BeModelEncounter.subject",
      "short" : "The person who is the subject of the healthcare the record (CareSet) refers to. Refers to BePatient",
      "definition" : "The person who is the subject of the healthcare the record (CareSet) refers to. Refers to BePatient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.episodeOfCare",
      "path" : "BeModelEncounter.episodeOfCare",
      "short" : "Reference to the EpisodeOfCare resource this Encounter is linked to. Refers to BeEpisodeOfCare",
      "definition" : "Reference to the EpisodeOfCare resource this Encounter is linked to. Refers to BeEpisodeOfCare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.basedOn",
      "path" : "BeModelEncounter.basedOn",
      "short" : "The request that initiated this Encounter. In this case it can only originate from BeCarePlan",
      "definition" : "The request that initiated this Encounter. In this case it can only originate from BeCarePlan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.careTeam",
      "path" : "BeModelEncounter.careTeam",
      "short" : "Reference to the CareTeam resource recording which team is involved in the care during this Encounter. Refers to BeCareTeam",
      "definition" : "Reference to the CareTeam resource recording which team is involved in the care during this Encounter. Refers to BeCareTeam",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.partOf",
      "path" : "BeModelEncounter.partOf",
      "short" : "Reference to another Encounter this Encounter is part of. Refers to BeEncounter",
      "definition" : "Reference to another Encounter this Encounter is part of. Refers to BeEncounter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.serviceProvider",
      "path" : "BeModelEncounter.serviceProvider",
      "short" : "Organisation responsible for this Encounter. Refers to BeOrganization",
      "definition" : "Organisation responsible for this Encounter. Refers to BeOrganization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.participant",
      "path" : "BeModelEncounter.participant",
      "short" : "List of participants involved in the care during this Encounter. Refers to BePractitioner",
      "definition" : "List of participants involved in the care during this Encounter. Refers to BePractitioner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelEncounter.participant.period",
      "path" : "BeModelEncounter.participant.period",
      "short" : "Period during which the Participant is involved in this Encounter",
      "definition" : "Period during which the Participant is involved in this Encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelEncounter.participant.role",
      "path" : "BeModelEncounter.participant.role",
      "short" : "Role of the Participant involved in this Encounter",
      "definition" : "Role of the Participant involved in this Encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEncounter.actualPeriod",
      "path" : "BeModelEncounter.actualPeriod",
      "short" : "The effective start and end moments of this Encounter",
      "definition" : "The effective start and end moments of this Encounter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelEncounter.length",
      "path" : "BeModelEncounter.length",
      "short" : "Effective duration of the Encounter (excluding absences)",
      "definition" : "Effective duration of the Encounter (excluding absences)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "BeModelEncounter.reason",
      "path" : "BeModelEncounter.reason",
      "short" : "The list of Reasons that will be discussed during this Encounter. ValueSet: VS_Encounter_Reason",
      "definition" : "The list of Reasons that will be discussed during this Encounter. ValueSet: VS_Encounter_Reason",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEncounter.diagnosis",
      "path" : "BeModelEncounter.diagnosis",
      "short" : "List of diagnoses relevant for this Encounter. Refers to BeProblem",
      "definition" : "List of diagnoses relevant for this Encounter. Refers to BeProblem",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.admission",
      "path" : "BeModelEncounter.admission",
      "short" : "Details about the admission of the patient to the care organisation",
      "definition" : "Details about the admission of the patient to the care organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelEncounter.admission.origin",
      "path" : "BeModelEncounter.admission.origin",
      "short" : "The location the patient came from for the admission. Refers to BeOrganization",
      "definition" : "The location the patient came from for the admission. Refers to BeOrganization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.admission.admitSource",
      "path" : "BeModelEncounter.admission.admitSource",
      "short" : "How the patient was admitted. ValueSet: VS_Encounter_Admission_AdmitSource",
      "definition" : "How the patient was admitted. ValueSet: VS_Encounter_Admission_AdmitSource",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEncounter.admission.reAdmission",
      "path" : "BeModelEncounter.admission.reAdmission",
      "short" : "Is this a re-admission of the patient?",
      "definition" : "Is this a re-admission of the patient?",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BeModelEncounter.admission.destination",
      "path" : "BeModelEncounter.admission.destination",
      "short" : "Destination of the patient after discharge. Refers to BeOrganization",
      "definition" : "Destination of the patient after discharge. Refers to BeOrganization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelEncounter.admission.dischargeDisposition",
      "path" : "BeModelEncounter.admission.dischargeDisposition",
      "short" : "Category of location after discharge of the patient. ValueSet: VS_Encounter_Admission_DischargeDisposition",
      "definition" : "Category of location after discharge of the patient. ValueSet: VS_Encounter_Admission_DischargeDisposition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelEncounter.note",
      "path" : "BeModelEncounter.note",
      "short" : "Additional information related to the CareSet content in free text form",
      "definition" : "Additional information related to the CareSet content in free text form",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
