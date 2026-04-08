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
* category from ProblemCategoryVS 

* code 1..1 CodeableConcept "Code" "Identification of the problem - in SNOMED-CT"
* code from ProblemCodeVS 

* clinicalStatus 1..1 CodeableConcept "Clinical Status" "Clinical status of the problem (active, inactive, resolved, etc.)"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical

* verificationStatus 0..1 CodeableConcept "Verification Status" "Degree of certainty associated with the problem (confirmed, suspected, etc.)"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status


* diseaseCourse 0..1 CodeableConcept "Course of Disease" "Course of disease evolution (acute, chronic, fulminant, etc.)"
* diseaseCourse from ProblemDiseaseCourseVS 

* symptom 0..* CodeableConcept "Symptom" "Symptoms recorded in the context of this problem"

* severity 0..1 CodeableConcept "Severity" "Degree of severity of the problem"
* severity from http://hl7.org/fhir/ValueSet/condition-severity

* bodySite 0..* CodeableConcept "Body Site" "Anatomical site(s) where the problem is active"
  * localisation 1..1 CodeableConcept  "Body Localisation" "Specific location on the body if not implied by the code"
  * localisation from https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-bodysite
  * laterality 0..1 CodeableConcept "Body Laterality" "Laterality of the affected body site (right, left, both)"
  * laterality from https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-laterality 
  * topography 0..1 CodeableConcept "Body Topography" "Topography of the affected body site (e.g., upper arm, lower leg, etc.)"
  * topography from https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-body-topography
* onset[x] 0..1 dateTime or Period or Range or Age or string "Onset" "Moment the problem began"
* abatement[x] 0..1 dateTime or Period or Range or Age or string "Abatement" "Moment the problem went into remission"
* note 0..* Annotation "Note" "Additional notes pertaining to the problem"



ValueSet: ProblemCategoryVS
Title: "Problem Category Value Set"
Description: "Category of the problem"


ValueSet: ProblemCodeVS
Title: "Problem Code Value Set"
Description: "Code of the problem"


ValueSet: ProblemDiseaseCourseVS
Title: "Condition Disease Course Value Set"
Description: "Condition Disease Course"
* include codes from system $sct where concept is-a #288524001 "Courses"
