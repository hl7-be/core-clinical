# BeProcedure Model - Clinical Core v1.2.0

## Logical Model: BeProcedure Model 

 
Procedure logical model 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelProcedure)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelProcedure.csv), [Excel](../StructureDefinition-BeModelProcedure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelProcedure",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelProcedure",
  "version" : "1.2.0",
  "name" : "BeModelProcedure",
  "title" : "BeProcedure Model",
  "status" : "active",
  "date" : "2026-05-07T07:13:57+00:00",
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
  "description" : "Procedure logical model",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelProcedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelProcedure",
      "path" : "BeModelProcedure",
      "short" : "BeProcedure Model",
      "definition" : "Procedure logical model"
    },
    {
      "id" : "BeModelProcedure.identifier",
      "path" : "BeModelProcedure.identifier",
      "short" : "Unique identifier for the procedure",
      "definition" : "Unique identifier for the procedure",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelProcedure.recordedDate",
      "path" : "BeModelProcedure.recordedDate",
      "short" : "Date of the last modification/recording of the procedure",
      "definition" : "Date of the last modification/recording of the procedure",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelProcedure.performedDate[x]",
      "path" : "BeModelProcedure.performedDate[x]",
      "short" : "Date or period when the procedure was actually performed",
      "definition" : "Date or period when the procedure was actually performed. For example: the date of an operation or the period during which a treatment was carried out",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelProcedure.patient",
      "path" : "BeModelProcedure.patient",
      "short" : "The patient that is the subject of the procedure.",
      "definition" : "The patient that is the subject of the procedure. This includes the patient's Social Security Identification Number (NISS), generally corresponding to the national registry number. In some cases, another unique identification code may be authorized, such as the BIS number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.recorder",
      "path" : "BeModelProcedure.recorder",
      "short" : "Person, organization or device that recorded the procedure.",
      "definition" : "Person, organization or device that recorded the procedure. For a healthcare provider, this is the Social Security Identification Number (NISS). For an organization, the Crossroads Bank for Social Security (BCSS) number is used. For a medical device, use the unique device identification number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.performer",
      "path" : "BeModelProcedure.performer",
      "short" : "Person who performed the procedure.",
      "definition" : "Person who performed the procedure. For a healthcare provider, this is the Social Security Identification Number (NISS). For an organization, the BCSS number is used. For a medical device, use the unique device identification number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "BeModelProcedure.request",
      "path" : "BeModelProcedure.request",
      "short" : "CarePlan and/or Referral Prescription that is at the origin of the procedure. For example: a physiotherapy session performed on prescription from the general practitioner",
      "definition" : "CarePlan and/or Referral Prescription that is at the origin of the procedure. For example: a physiotherapy session performed on prescription from the general practitioner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.partOf",
      "path" : "BeModelProcedure.partOf",
      "short" : "Part of the event being referenced: procedure, observation (symptoms) or problem (disease). For example: Blood draw (procedure) is part of the diagnostic observation (Observation)",
      "definition" : "Part of the event being referenced: procedure, observation (symptoms) or problem (disease). For example: Blood draw (procedure) is part of the diagnostic observation (Observation)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.category",
      "path" : "BeModelProcedure.category",
      "short" : "Type or nature of the procedure. For example: surgical, psychiatric or chiropractic procedures",
      "definition" : "Type or nature of the procedure. For example: surgical, psychiatric or chiropractic procedures",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProcedure.focalDevice[x]",
      "path" : "BeModelProcedure.focalDevice[x]",
      "short" : "Implanted or manipulated device",
      "definition" : "Implanted or manipulated device",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.usedDevice",
      "path" : "BeModelProcedure.usedDevice",
      "short" : "Devices or materials used temporarily during the procedure. For example: surgical robot, intraoperative imaging, neuronavigation. This also includes substances such as gels. Standard small instruments such as scalpels and syringes are not recorded",
      "definition" : "Devices or materials used temporarily during the procedure. For example: surgical robot, intraoperative imaging, neuronavigation. This also includes substances such as gels. Standard small instruments such as scalpels and syringes are not recorded",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.status",
      "path" : "BeModelProcedure.status",
      "short" : "Procedure status (not-done, stopped, completed, entered-in-error). Note: 'not-done' is out of scope as it implies planning. Business Rule: 'completed' by default",
      "definition" : "Procedure status (not-done, stopped, completed, entered-in-error). Note: 'not-done' is out of scope as it implies planning. Business Rule: 'completed' by default",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "BeModelProcedure.code",
      "path" : "BeModelProcedure.code",
      "short" : "Identification of the procedure (SNOMED-CT Procedure concept)",
      "definition" : "Identification of the procedure (SNOMED-CT Procedure concept)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProcedure.reason",
      "path" : "BeModelProcedure.reason",
      "short" : "Reason why the procedure is performed. For example: amputation after an accident, broken leg",
      "definition" : "Reason why the procedure is performed. For example: amputation after an accident, broken leg",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelProcedure.reason.reasonCode",
      "path" : "BeModelProcedure.reason.reasonCode",
      "short" : "Coded reason why the procedure is performed",
      "definition" : "Coded reason why the procedure is performed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProcedure.reason.reasonReference",
      "path" : "BeModelProcedure.reason.reasonReference",
      "short" : "Reference to the condition, observation or procedure that is the reason",
      "definition" : "Reference to the condition, observation or procedure that is the reason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.bodySite",
      "path" : "BeModelProcedure.bodySite",
      "short" : "The site on the patient's body where the procedure was performed",
      "definition" : "The site on the patient's body where the procedure was performed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite"
      }]
    },
    {
      "id" : "BeModelProcedure.surgicalApproach",
      "path" : "BeModelProcedure.surgicalApproach",
      "short" : "Indicates by which anatomical route or according to which technique the procedure was performed. For example: laparoscopic, endoscopic, percutaneous",
      "definition" : "Indicates by which anatomical route or according to which technique the procedure was performed. For example: laparoscopic, endoscopic, percutaneous",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProcedure.location",
      "path" : "BeModelProcedure.location",
      "short" : "Reference to the location where the procedure was performed. Example: Healthcare provider's office, Patient's home, Hospital, Outpatient, other",
      "definition" : "Reference to the location where the procedure was performed. Example: Healthcare provider's office, Patient's home, Hospital, Outpatient, other",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.outcome",
      "path" : "BeModelProcedure.outcome",
      "short" : "Result of the procedure execution. Example: Partial success, Success, Unsuccessful",
      "definition" : "Result of the procedure execution. Example: Partial success, Success, Unsuccessful",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProcedure.report",
      "path" : "BeModelProcedure.report",
      "short" : "Any report resulting from the procedure. To be discussed (In version 1: attached document (pdf, URL, jpg, etc.). In the future possibly reference to a DiagnosticReport or other)",
      "definition" : "Any report resulting from the procedure. To be discussed (In version 1: attached document (pdf, URL, jpg, etc.). In the future possibly reference to a DiagnosticReport or other)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelProcedure.note",
      "path" : "BeModelProcedure.note",
      "short" : "Additional information about the procedure",
      "definition" : "Additional information about the procedure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
