# Artifacts Summary - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [BeClinicalObservation Model](StructureDefinition-BeModelClinicalObservation.md) | Clinical Observation logical model |
| [BodySite Model](StructureDefinition-BeModelBodySite.md) | Body site model |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeAppointment](StructureDefinition-BeAppointment.md) | Placeholder profile for contextualising the FHIR resource |
| [BeCarePlan](StructureDefinition-BeCarePlan.md) | Placeholder profile for contextualising the FHIR resource |
| [BeClinicalImpression](StructureDefinition-BeClinicalImpression.md) | Placeholder profile for contextualising the FHIR resource |
| [BeClinicalObservation](StructureDefinition-be-clinical-observation.md) | Belgian federal profile for a clinical observation. |
| [BeEncounter](StructureDefinition-be-encounter.md) | Placeholder profile for contextualising the FHIR resource |
| [BeGoal](StructureDefinition-BeGoal.md) | Placeholder profile for contextualising the FHIR resource |
| [BeObservation](StructureDefinition-be-observation.md) | Belgian federal profile for an observation. Initially based on the functional description of the NIHDI. As Observation is used in many instances in FHIR, please refer to the HL7 specs of the base resource for guidance around expression of actual values using UCUM, methods, location on body etc.Special remarks for KMEHR users: The FHIR Observation resource captures many things that are in a KMEHR message structured as an ‘item’. This includes things like ‘vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, or cognitive status […]’ ( https://www.hl7.org/fhir/R4/observation.html ) For some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html |
| [BeProblem](StructureDefinition-be-problem.md) | Belgian federal profile. Initially based on the functional description of the NIHDI. Defines a patient’s known problem, a diagnostic or antecedent that deserves attention. |
| [BeProcedure](StructureDefinition-be-procedure.md) | Placeholder profile for contextualising the FHIR resource |
| [BeQuestionnaireResponse](StructureDefinition-be-questionnaire-response.md) | Placeholder profile for contextualising the FHIR resource |
| [BeScoreResult](StructureDefinition-be-scoreresult.md) | To support the standard exchange of scores such as pain assessment scores, or risk score, etc |
| [BeServiceRequest](StructureDefinition-be-service-request.md) | Placeholder profile for contextualising the FHIR resource |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeObservationCodeableConcept](StructureDefinition-be-observationcodeableconcept.md) | This is a supporting profile, only to give guidelines how to express a few of the typical coding systems. In general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.) |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeExtBodyTopography](StructureDefinition-be-ext-body-topography.md) | Describes the location or relative position on the body, such as superior/inferior, medial/lateral or internal/external. |
| [BeExtLaterality](StructureDefinition-be-ext-laterality.md) | An explicit statement of laterality of a lesion, or a treatment, etc. |
| [BeExtProblemOriginType](StructureDefinition-be-ext-problem-origin-type.md) | The type of event that triggers the problem to be evaluated - whether the problem was reported from a referring GP, etc… |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BeVSBodyTopography](ValueSet-be-vs-body-topography.md) | Body topography value set - describes the location or relative position on the body (e.g., superior/inferior, medial/lateral, internal/external) |
| [Body Site](ValueSet-be-vs-bodysite.md) | Body Site |
| [Laterality](ValueSet-be-vs-laterality.md) | Laterality |
| [Problem Category](ValueSet-be-vs-problem-category.md) | Problem Category |
| [Problem Code](ValueSet-be-vs-problem-code.md) | Problem Code. No Belgian standardized valueset is yet defined, this is expected for a future iteration. Implementers are encouraged to use a codification system of their choosing. |
| [Problem Origin Type](ValueSet-be-vs-problem-origin-type.md) | Problem Origin Type |
| [Reaction Manifestation Code](ValueSet-be-vs-reaction-manifestation-code.md) | Reaction Manifestation Code (Allergy - Immunization) |
| [Score Category Value Set](ValueSet-be-vs-scorecategory.md) | Score Category Value Set |
| [Score Value Set](ValueSet-be-vs-score.md) | Codes as defined by the NIHDI. Dutch translations are expected for a next release. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Body Site CodeSystem](CodeSystem-be-cs-bodysite.md) | Body Site CodeSystem |
| [Problem Category](CodeSystem-be-cs-problem-category.md) | Problem Category |
| [Problem Origin Type](CodeSystem-be-cs-problem-origin-type.md) | Problem Origin Type |
| [Score Category](CodeSystem-be-cs-score-category.md) | Score Category |
| [Score Code System](CodeSystem-be-cs-score.md) | Codes as defined initially by the NIHDI. Dutch translations were not yet defined but are planned for a next release. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [terminology-expansion](Parameters-terminology-expansion.md) |

