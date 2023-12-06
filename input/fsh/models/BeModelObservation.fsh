Logical: BeModelObservation
Parent: Base
Description: "Logical model for the Observation careset"
Title: "BeModelObservation"
* uniqueIdentifier 1..1 Identifier "Unique identifier of the observation. Identifier value. (https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing)."
* recordedDate 1..1 dateTime "date of last modification of the information by the Recorder. Not part of the identifier (no versioning)."
* recorder 1..1 Identifier "is the unique identifier of the healthcare professional who encodes the information. The unique identifier must be the National Professional Register Number (NISS) but in certain cases, another unique identifier can be authorized (see business rules)"
* performer 1..1 Identifier "is the unique identifier of the healthcare professional who takes responsibility for its content. The unique identifier must be the national professional register number (NISS) but in certain cases, another unique identifier can be authorized (see business rules)"
* patient 1..1 Identifier "is the unique patient identifier. The unique identifier must be the patient's national register number (NISS) but in certain cases, another unique identifier can be authorized (such as biss number or surname, first name(s), date of birth)"
* carePlan 0..1 Reference(CarePlan) "Reference to the patient's care plan"
* serviceRequest  0..1 Identifier "(on which the analysis is based) Reference of the service request on which the analysis was based (e.g. UniqueIdentifier of the Referral Prescription)"
* medicalAct  0..1 Identifier "(at the origin of the observation) Reference to the technical act (surgical operation, imaging, blood test, etc.) at the origin of this observation, i.e. executed to obtain this observation or having given rise to this observation. (e.g. UniqueIdentifier of Procedure)"
* medication  0..1 Identifier "(at the origin of the observation) Reference to the medication administered at the origin of this observation; it may be an administered medication (line of medication, prescription) or a substance in the case of self-medication. This is an observation of a medication, not an allergy or intolerance or non-allergic hypersensitivity."
* sampleAnalyzed  0..1 Identifier "(at the origin of the observation) Any type of reference to the “material” analyzed (blood sample, tissues, fecal matter, etc.)."
* implantProsthesis  0..1 Identifier "(at the origin of the observation)the contextual reference to an implanted device (Device)"
* otherPatientConcerned 0..1 Identifier "another patient concomitantly concerned (e.g., in the case of maternity wards or transplants)"
* measuringDevice  0..1 Identifier "(at the origin of the observation) The device that takes the measurements of the observation (e.g. Continuous Glucose Sensor)"
* category 1..1 CodeableConcept "Category of observations."
* code 1..1 CodeableConcept "LOINC or SNOMED CT coding of the observation. Please note there are cases, such as observations at birth which constitute an exception because it is a 2-level coding and it is the SNOMED coding which is used)."
* datePeriodOfObservation[x] 1..1 dateTime or Period "Date or period of observation"
* value 0..1 Element "The result of the observation. When the observation relates to a single code (typically a simple measurement of vital signs, a measurement of height, etc.), the value is used to quantify the measurement. The value includes a trio (value, unit of measurement, unit of measurement code) which quantifies the code. As an example, (75, Milligram per deciliter, Mg/dl). Units are defined by the unitsofmeasure.org standard (see appendix, Units of measurement)"
* component 0..* Element "In certain cases, the analysis is composed of several measurement analyzes or is based on two-level coding (see eBirth). In this case, we use the “Observation.component” which includes several “component.code” accompanied by their “component.value[x]”. Only in the case of correlated measurements (e.g. blood pressure, lipid profile, etc.)"
* status 0..1  CodeableConcept "indicates the status of the observation"
* conclusion 0..1 CodeableConcept "indicates the code according to which the measurement must be interpreted (better, worse, ...) according to the HL7 standard"
* bodyLocalisation 0..1 CodeableConcept "indicates the location of the patient's body where the disease is active if this precision is not contained in the code"
* bodyLaterality 0..1 CodeableConcept "specifies the laterality of the body where the disease is active if this precision is not contained in the code (right, left, both)"
* note 0..* Annotation "note"