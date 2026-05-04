Logical: BeModelDiagnosticReportDiabetes
Parent: Base
Title: "Logical data model for Diabetes Diagnostic Report "
Description: "A"


// * UniqueIdentifierNational 1..1 Identifier "Unique business identifier of the report.(https://docs.google.com/document/d/13qamEPfdQ2HgUiXmjwHQNchpEU3LsQHF5MN9jKufX2g/edit?usp=sharing)."
// * BusinessIdentifier 0..1 Identifier "Report identifier for the internal supplier's business."
* identifier 1..* "Unique identifier of the report"
//* RecordedDate 1..1 dateTime "Date the report was produced."
* recordedDate 1..1 dateTime "Date the report was authored."

// * Status 0..1 code "Report status. By default it is “Final”. Value according to the business rule on “% Data Captured” see VS_DiagRep_Status"
* status 0..1 code "The status of the report"

//* Patient 1..1 Identifier "We refer to the patient, subject of the report, by his unique identifier.This identifier is preferably the patient's national register number (NISS). In some cases, another unique identifier may be allowed."
* patient 1..1 Reference "The patient - subject of the report."

//* Recorder 1..1 Identifier "This refers to the service provider or organization that encodes the information.[1] The unique identifier for each natural person is the NISS, while for each organization the business number serves as the unique identifier."
* recorder 1..1 Reference "The provider or organization that encodes the information."

//Performer 1..1 Identifier "We refer to the service provider or organization that collects the observations and produces the report. [2]The unique identifier of each natural person is the NISS, while for each organization the company number serves as the unique identifier.For the Diabetes Diagnostic Report, it is: “performer = recorder.»"
* performer 1..1 Reference "The service provider or organization that collects the observations and produces the report."

//* Interpreter 0..1 Identifier "Care provider identified by their NISS (endocrinologist* , general practitioner, etc.) interprets the observations in the report. ResultsInterpreter This element will not be provided by the producer of the report, but will include the reference of the healthcare provider who does the interpretation."
* interpreter 0..1 Identifier "Care provider that interpreted the observations in the report."

//* ObservationPeriod 1..1 Period "From date to date corresponding to the period covered by the report. Typically 14 to 30 days. See 2.1 above, Figure 3 Data relationship logic."
* observationPeriod 1..1 Period "The period covered by the report."

//* Category 1..* CodeableConcept "Category of the report. According to ref. 8, it would be appropriate to consider setting the cardinality of the Catgory field to 1..* and to add to this report the values: 4311000179106 |Chemical pathology report (record artifact) and 408475000 |Diabetic medicine (qualifier value). 394583002 |Endocrinology (qualifier value) of the report. Look at VS_DiagRep_Category."
* category 1..* CodeableConcept "Category of the report."

// * Qualification 1..1 CodeableConcept "Is the category of diabetic patient (CAT 1, CAT 2, CAT 3). (See glossary for details).By default, the qualification is “CAT 3”.The category is calculated by an algorithm from the diagnosis provided by the doctor — interpreter."
* qualification 1..1 CodeableConcept "The determined category of diabetic patient (CAT 1, CAT 2, CAT 3)"

// * Device 0..1 Identifier "Identification number assigned by INAMI to the sensor type.See VS_Diab_Device"
* device 0..1 Reference "The device used in the report"

// * Code 1..1 CodeableConcept "Report code. In the diabetes project framework, it is proposed to indicate the type of procedure that leads to the production of the primary values ​​of this report. That is to say 439926003 | Ambulatory continuous glucose monitoring of interstitial tissue fluid. VS_DiagRep_Code."
* code 1..1 CodeableConcept "The type of report code" // could it be also type of procedure?

// * DerivedObservations 0..* Observation "List of references to “derived values” type observations (a dozen derived observations) mentioned in the report.[3]His observations are part of the diagnostic report."
* derivedObservations 0..* Observation "Observations derived from initial data"

// * MeasurementObservations 0..* Observation "List of references to “blood glucose measurement” type observations used to produce the analysis (a few thousand measurements) [4] type (“SCI”)[5]"
* measurementObservations 0..* Observation "Observations actually captured and used to produce the analysis"

// * Diagnosis 0..* Condition "Problem reference related to this diagnostic report.This element will not be provided by the producer of the report but will be provided by the healthcare provider who does the interpretation."
* diagnosis 0..* Condition "Problem reference related to this diagnostic report????" // existing, or outcome?

// * Note 0..* Annotation "Report comments in free text format. This element will not be provided by the producer of the report, but will be provided by the healthcare provider doing the interpretation."
* note 0..* Annotation "report comments in free text format." // existing, or outcome?

// //* Link 0..1 uri "URL to the reference software."

// * Document 0..1 Binary "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)"
* document 0..1 Binary "PDF document containing the complete report (text, graphics, deduced observations, conclusions, etc.)"





