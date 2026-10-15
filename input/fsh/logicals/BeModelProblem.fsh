Logical: BeModelProblem
Title: "Problem Logical Model"
Description: "Logical model for Problem"

* identifier 1..* Identifier "Business Identifier" "Unique identifier of the problem"
* recordedDate 1..1 dateTime "Recorded Date" "Date of last modification of the information by the recorder"
* recorder 1..1 Identifier "Recorder" "The healthcare professional responsible for the content (ideally identified by the NISS)"
* asserter 0..1 Identifier "Asserter" "The person asserting the information (e.g., patient, practitioner, parent; ideally identified by the NISS)"
* subject 1..1 Reference(Patient) "Patient" "Reference or Identifier to the patient (ideally identified by the NISS)"
* cause 0..* Reference(Condition or Procedure or MedicationAdministration or Immunization or MedicationStatement) "Cause" "Reference to the primary cause of the problem (procedure, medication administration, or other condition)"
* category 0..* CodeableConcept "Category" "Thematic category of the problem"
* category from BeVSProblemCategory 

* code 1..1 CodeableConcept "Code" "Identification of the problem - in SNOMED-CT"
* code from BeVSProblemCode 

* clinicalStatus 1..1 CodeableConcept "Clinical Status" "Clinical status of the problem (active, inactive, resolved, etc.)"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1 CodeableConcept "Verification Status" "Degree of certainty associated with the problem (confirmed, suspected, etc.)"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status


* diseaseCourse 0..1 CodeableConcept "Course of Disease" "Course of disease evolution (acute, chronic, fulminant, etc.)"
* diseaseCourse from ProblemDiseaseCourseVS 

* symptom 0..* CodeableConcept "Symptom" "Symptoms recorded in the context of this problem"

* severity 0..1 CodeableConcept "Severity" "Degree of severity of the problem"
* severity from http://hl7.org/fhir/ValueSet/condition-severity

// bodySite reuses the BeModelBodySite logical model, as BeModelClinicalObservation does.
// Children cannot be declared under a CodeableConcept: it is a concrete type, so the
// IG Publisher rejects localisation / laterality / topography defined inside it.
* bodySite 0..* BeModelBodySite "Body Site" "Anatomical site(s) where the problem is active"
  * bodyLocation from BeVSBodySite (required)
  * bodyLaterality from BeVSLaterality (required)
  * bodyTopography from BeVSBodyTopography (required)
* onset[x] 0..1 dateTime or Period or Range or Age or string "Onset" "Moment the problem began"
* abatement[x] 0..1 dateTime or Period or Range or Age or string "Abatement" "Moment the problem went into remission"
* note 0..* Annotation "Note" "Additional notes pertaining to the problem"

ValueSet: ProblemDiseaseCourseVS
Title: "Condition Disease Course Value Set"
Description: "Condition Disease Course"
* ^experimental = false
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."""
* include codes from system $sct where concept is-a #288524001 "Courses"
