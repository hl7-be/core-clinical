# Problem Logical Model - Clinical Core v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Problem Logical Model**

## Logical Model: Problem Logical Model 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelProblem | *Version*:1.1.0 |
| Active as of 2026-04-08 | *Computable Name*:BeModelProblem |

 
Logical model for Problem 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelProblem)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelProblem.csv), [Excel](StructureDefinition-BeModelProblem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelProblem",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelProblem",
  "version" : "1.1.0",
  "name" : "BeModelProblem",
  "title" : "Problem Logical Model",
  "status" : "active",
  "date" : "2026-04-08T07:16:41+00:00",
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
  "description" : "Logical model for Problem",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelProblem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelProblem",
      "path" : "BeModelProblem",
      "short" : "Problem Logical Model",
      "definition" : "Logical model for Problem"
    },
    {
      "id" : "BeModelProblem.identifier",
      "path" : "BeModelProblem.identifier",
      "short" : "Business Identifier",
      "definition" : "Unique identifier of the problem",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelProblem.recordedDate",
      "path" : "BeModelProblem.recordedDate",
      "short" : "Recorded Date",
      "definition" : "Date of last modification of the information by the recorder",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelProblem.recorder",
      "path" : "BeModelProblem.recorder",
      "short" : "Recorder",
      "definition" : "The healthcare professional responsible for the content (ideally identified by the NISS)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelProblem.asserter",
      "path" : "BeModelProblem.asserter",
      "short" : "Asserter",
      "definition" : "The person asserting the information (e.g., patient, practitioner, parent; ideally identified by the NISS)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelProblem.subject",
      "path" : "BeModelProblem.subject",
      "short" : "Patient",
      "definition" : "Reference or Identifier to the patient (ideally identified by the NISS)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "BeModelProblem.cause",
      "path" : "BeModelProblem.cause",
      "short" : "Cause",
      "definition" : "Reference to the primary cause of the problem (procedure, medication administration, or other condition)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://hl7.org/fhir/StructureDefinition/Procedure",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
        "http://hl7.org/fhir/StructureDefinition/Immunization",
        "http://hl7.org/fhir/StructureDefinition/MedicationStatement"]
      }]
    },
    {
      "id" : "BeModelProblem.category",
      "path" : "BeModelProblem.category",
      "short" : "Category",
      "definition" : "Thematic category of the problem",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/ProblemCategoryVS"
      }
    },
    {
      "id" : "BeModelProblem.code",
      "path" : "BeModelProblem.code",
      "short" : "Code",
      "definition" : "Identification of the problem - in SNOMED-CT",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/ProblemCodeVS"
      }
    },
    {
      "id" : "BeModelProblem.clinicalStatus",
      "path" : "BeModelProblem.clinicalStatus",
      "short" : "Clinical Status",
      "definition" : "Clinical status of the problem (active, inactive, resolved, etc.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-clinical"
      }
    },
    {
      "id" : "BeModelProblem.verificationStatus",
      "path" : "BeModelProblem.verificationStatus",
      "short" : "Verification Status",
      "definition" : "Degree of certainty associated with the problem (confirmed, suspected, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-ver-status"
      }
    },
    {
      "id" : "BeModelProblem.diseaseCourse",
      "path" : "BeModelProblem.diseaseCourse",
      "short" : "Course of Disease",
      "definition" : "Course of disease evolution (acute, chronic, fulminant, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/ProblemDiseaseCourseVS"
      }
    },
    {
      "id" : "BeModelProblem.symptom",
      "path" : "BeModelProblem.symptom",
      "short" : "Symptom",
      "definition" : "Symptoms recorded in the context of this problem",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProblem.severity",
      "path" : "BeModelProblem.severity",
      "short" : "Severity",
      "definition" : "Degree of severity of the problem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/condition-severity"
      }
    },
    {
      "id" : "BeModelProblem.bodySite",
      "path" : "BeModelProblem.bodySite",
      "short" : "Body Site",
      "definition" : "Anatomical site(s) where the problem is active",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelProblem.bodySite.localisation",
      "path" : "BeModelProblem.bodySite.localisation",
      "short" : "Body Localisation",
      "definition" : "Specific location on the body if not implied by the code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-bodysite"
      }
    },
    {
      "id" : "BeModelProblem.bodySite.laterality",
      "path" : "BeModelProblem.bodySite.laterality",
      "short" : "Body Laterality",
      "definition" : "Laterality of the affected body site (right, left, both)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-laterality"
      }
    },
    {
      "id" : "BeModelProblem.bodySite.topography",
      "path" : "BeModelProblem.bodySite.topography",
      "short" : "Body Topography",
      "definition" : "Topography of the affected body site (e.g., upper arm, lower leg, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography"
      }
    },
    {
      "id" : "BeModelProblem.onset[x]",
      "path" : "BeModelProblem.onset[x]",
      "short" : "Onset",
      "definition" : "Moment the problem began",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      },
      {
        "code" : "Range"
      },
      {
        "code" : "Age"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelProblem.abatement[x]",
      "path" : "BeModelProblem.abatement[x]",
      "short" : "Abatement",
      "definition" : "Moment the problem went into remission",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      },
      {
        "code" : "Range"
      },
      {
        "code" : "Age"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelProblem.note",
      "path" : "BeModelProblem.note",
      "short" : "Note",
      "definition" : "Additional notes pertaining to the problem",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
