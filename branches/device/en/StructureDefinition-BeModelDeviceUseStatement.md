# DeviceUseStatement Logical Model - Clinical Core v1.1.0

## Logical Model: DeviceUseStatement Logical Model 

 
Logical model for recording the use of a medical device by a patient 

### Relationship with other elements:

The Device Use Statement model relates to the other data structures in the following way:

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelDeviceUseStatement)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelDeviceUseStatement.csv), [Excel](../StructureDefinition-BeModelDeviceUseStatement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelDeviceUseStatement",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelDeviceUseStatement",
  "version" : "1.1.0",
  "name" : "BeModelDeviceUseStatement",
  "title" : "DeviceUseStatement Logical Model",
  "status" : "active",
  "date" : "2026-05-05T08:40:14+00:00",
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
  "description" : "Logical model for recording the use of a medical device by a patient",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelDeviceUseStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelDeviceUseStatement",
      "path" : "BeModelDeviceUseStatement",
      "short" : "DeviceUseStatement Logical Model",
      "definition" : "Logical model for recording the use of a medical device by a patient"
    },
    {
      "id" : "BeModelDeviceUseStatement.identifier",
      "path" : "BeModelDeviceUseStatement.identifier",
      "short" : "Identifier",
      "definition" : "Unique ID of this device use registration, assigned by the system that creates the DeviceUseStatement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.basedOn",
      "path" : "BeModelDeviceUseStatement.basedOn",
      "short" : "Based On",
      "definition" : "Reference to a request or plan on which this use is based, e.g. a ServiceRequest or prescription",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.status",
      "path" : "BeModelDeviceUseStatement.status",
      "short" : "Status",
      "definition" : "Status of the registration (active, completed, entered-in-error, intended, stopped, on-hold)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/device-statement-status"
      }
    },
    {
      "id" : "BeModelDeviceUseStatement.patient",
      "path" : "BeModelDeviceUseStatement.patient",
      "short" : "Patient",
      "definition" : "The patient who uses the medical device",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.derivedFrom",
      "path" : "BeModelDeviceUseStatement.derivedFrom",
      "short" : "Derived From",
      "definition" : "Extra information on which this registration is based, e.g. a prior Procedure or Observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.timing[x]",
      "path" : "BeModelDeviceUseStatement.timing[x]",
      "short" : "Timing",
      "definition" : "Description of how often or when the device is used, e.g. every night between 22:00 and 07:00",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      },
      {
        "code" : "Timing"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.recordedDate",
      "path" : "BeModelDeviceUseStatement.recordedDate",
      "short" : "Recorded Date",
      "definition" : "Date and time when the registration was entered",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.source",
      "path" : "BeModelDeviceUseStatement.source",
      "short" : "Source",
      "definition" : "Who created the registration, e.g. a nurse recording the use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.device",
      "path" : "BeModelDeviceUseStatement.device",
      "short" : "Device",
      "definition" : "The device being used, e.g. reference to Device 'Insulin pump SN12345'",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.reasonCode",
      "path" : "BeModelDeviceUseStatement.reasonCode",
      "short" : "Reason Code",
      "definition" : "Reason why the device is used - can be a condition (problem), procedure or observation code",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.reasonReference",
      "path" : "BeModelDeviceUseStatement.reasonReference",
      "short" : "Reason Reference",
      "definition" : "Reference to a clinical source for the reason, e.g. a diagnosis in a problem resource",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.bodySite",
      "path" : "BeModelDeviceUseStatement.bodySite",
      "short" : "Body Site",
      "definition" : "The anatomical location where the device is used or implanted",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelDeviceUseStatement.bodySite.localisation",
      "path" : "BeModelDeviceUseStatement.bodySite.localisation",
      "short" : "Body Localisation",
      "definition" : "Specific location on the body, e.g. left hip",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-bodysite"
      }
    },
    {
      "id" : "BeModelDeviceUseStatement.bodySite.laterality",
      "path" : "BeModelDeviceUseStatement.bodySite.laterality",
      "short" : "Body Laterality",
      "definition" : "Laterality of the body site where the device is used/implanted (right, left, both)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-laterality"
      }
    },
    {
      "id" : "BeModelDeviceUseStatement.bodySite.topography",
      "path" : "BeModelDeviceUseStatement.bodySite.topography",
      "short" : "Body Topography",
      "definition" : "Relative position of the device on the body (e.g., upper/lower, medial/lateral, internal/external)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-topography"
      }
    },
    {
      "id" : "BeModelDeviceUseStatement.note",
      "path" : "BeModelDeviceUseStatement.note",
      "short" : "Note",
      "definition" : "Remarks or additional instructions, e.g. 'Patient reports irritation around the sensor'",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
