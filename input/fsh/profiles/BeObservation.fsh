

Logical: BeModelObservation
Parent: Base
Title: "Observation model"
Description: "A model for observations, which are measurements or assessments made about a patient or subject. This model is used to represent various types of clinical observations."
* subject 1..1 Reference(BePatient) "Subject of the observation" """The patient or subject to whom the observation applies."""
* code 1..1 CodeableConcept "Observation code" """A code that identifies the type of observation being made, such as a clinical measurement or assessment."""
  * ^binding.strength = #required
  * ^binding.description = "The code that identifies the type of observation, such as a clinical measurement or assessment."
* value[x] 0..1 Quantity or CodeableConcept or string or boolean "Value of the observation" """The value of the observation, which can be a quantity, a coded value, or a string."""
* effective[x] 0..1 dateTime or Period "Effective time or period" """The time or period during which the observation was made."""
* status 1..1 CodeableConcept "Observation status" """The status of the observation, indicating whether it is preliminary, final, etc."""
  * ^binding.strength = #required
  * ^binding.description = "The status of the observation, such as preliminary, final, amended, etc."
//* statusReason[x] 0..1 CodeableConcept or string "Reason for the observation status" """The reason for the current status of the observation."""
* performer 0..* Reference(BePractitioner or BeOrganization) "Performer of the observation" """The individual or organization that performed the observation."""
* component 0..* Base "Component observations" """Components of the observation, which can include additional measurements or assessments related to the main observation."""
  * code 1..1 CodeableConcept "Component code" """A code that identifies the component of the observation."""
  * value[x] 0..1 Quantity or CodeableConcept or string or boolean "Component value" """The value of the component observation, which can be a quantity, a coded value, or a string."""
* interpretation 0..1 CodeableConcept "Interpretation of the observation" """An interpretation of the observation, such as normal, abnormal, etc."""
* note 0..* Annotation "Notes or comments about the observation" """Additional notes or comments related to the observation."""





Profile: BeObservation
Parent: Observation
Id: be-observation
Description: """Belgian federal profile for an observation. Initially based on the functional description of the NIHDI.
As Observation is used in many instances in FHIR, please refer to the HL7 specs of the base resource for guidance around expression of actual values using UCUM, methods, location on body etc.  

Special remarks for KMEHR users:
The FHIR Observation resource captures many things that are in a KMEHR message structured as an 'item'. This includes things like 'vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, or cognitive status […]' ( https://www.hl7.org/fhir/R4/observation.html )
For some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html"""
* subject MS 
* code MS 
* value[x] MS 
* effective[x] MS 
* status MS 
//* statusReason MS 
* performer MS 
* component MS 
* component.code MS 
* component.value[x] MS 
* interpretation MS 
* note MS


// * code only BeObservationCodeableConcept //remove, pointless
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nFor providing systems, it is RECOMMENDED to express this using a code and consuming software SHALL record this.\r\nIn general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)"
//* subject only Reference(Patient or Group or Device or Location or BePatient) Remove, pointless
//* performer 1..
// * performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or BePatient or BeOrganization or BePractitionerRole or BePractitioner)
//* performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\nSpecial remarks for KMEHR users:\r\nIn a KMEHR context, this would be 'author'."
//* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
