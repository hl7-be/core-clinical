
Logical: BeModelObservation
Parent: Base
Title: "Observation model"
Description: "A model for observations, which are measurements or assessments made about a patient or subject. This model is used to represent various types of clinical observations."

* subject 1..1 Reference(BePatient) "Subject of the observation" """The patient or subject to whom the observation applies."""

* identifier 1..* Identifier "Unique identifiers for the observation" """Identifiers that uniquely identify the observation, such as a lab test result or clinical assessment."""
* recordedDate 1..1 dateTime "Date and time the observation was recorded or last updated" """The date and time when the observation was recorded or last updated in the system."""
* date 1..1 dateTime "Date and time the observation was made" """The date and time when the observation was actually made, which may differ from the recorded date."""
* recorder 0..1 Reference(BePractitioner or BeOrganization) "Recorder of the observation" """The individual or organization that recorded the observation, if different from the performer."""


* effective[x] 0..1 dateTime or Period "Effective time or period" """The time or period during which the observation was made."""
* status 1..1 CodeableConcept "Observation status" """The status of the observation, indicating whether it is preliminary, final, etc."""
  * ^binding.strength = #required
  * ^binding.description = "The status of the observation, such as preliminary, final, amended, etc."
* statusReason[x] 0..1 CodeableConcept or string "Reason for the observation status" """The reason for the current status of the observation."""
* performer 0..* Reference(BePractitioner or BeOrganization) "Performer of the observation" """The individual or organization that performed the observation."""

* asserter 0..1 Reference(BePractitioner or BeOrganization) "Asserter of the observation" """The individual or organization that asserts the observation, which may be the same as the performer or a different entity."""

* request 0..1 Reference(BeServiceRequest) "Related service requests" """Service requests related to the observation, such as lab tests or imaging studies that prompted the observation."""

* partOfProcedure 0..* Reference(BeProcedure) "Part of procedure" """Procedures that the observation is part of, such as surgical procedures or diagnostic tests."""
* specimen 0..* Reference(Specimen) "Specimen related to the observation" """Specimens that are related to the observation, such as blood samples or tissue samples."""

* category 0..* CodeableConcept "Observation category" """The category of the observation, such as vital signs, laboratory results, or clinical assessments."""
 
* code 1..1 CodeableConcept "Observation code" """A code that identifies the type of observation being made, such as a clinical measurement or assessment."""
//  * ^binding.strength = #required
  * ^binding.description = "The code that identifies the type of observation, such as a clinical measurement or assessment."
* value[x] 0..1 Quantity or CodeableConcept or string or boolean "Value of the observation" """The value of the observation, which can be a quantity, a coded value, or a string."""

* component 0..* Base "Component observations" """Components of the observation, which can include additional measurements or assessments related to the main observation."""
  * code 1..1 CodeableConcept "Component code" """A code that identifies the component of the observation."""
  * value[x] 0..1 Quantity or CodeableConcept or string or boolean "Component value" """The value of the component observation, which can be a quantity, a coded value, or a string."""
* interpretation 0..1 CodeableConcept "Interpretation of the observation" """An interpretation of the observation, such as normal, abnormal, etc."""
* note 0..* Annotation "Notes or comments about the observation" """Additional notes or comments related to the observation."""


