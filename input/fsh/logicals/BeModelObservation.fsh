Logical: BeModelObservation
Title: "BeObservation Model"
Description: "Observation logical model"
Id: be-model-observation


* identifier 1..* Identifier "Unique identifier for the observation"
* recordedDate 1..1 dateTime "Date when the observation was recorded"
* observationDate[x] 1..1 dateTime or Period "Date or period of the observation"
* recorder 1..1 Reference "Person, organisation or device that recorded the observation"
* performer 0..1 Reference "The professional that performed the observation"
* patient 1..1 Reference "The patient that this observation is about"
//* focus 0..1 Reference "The actual focus of an observation when it is not the patient of record"
* request 0..1 Reference "The request that this observation is fulfilling"
* partOfProcedure 0..* Reference "Part of referenced procedure"
* specimen 0..1 Reference "The specimen that was used when this observation was made"
* device 0..1 Reference "The device used to generate the observation data"
* category 0..* CodeableConcept "A code that classifies the general type of observation being made"
* code 1..1 CodeableConcept "Describes what was observed. Sometimes this is called the observation 'name'"
* value[x] 0..1 Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or time or dateTime or Period "The value of the observation - typically a code, an amount or a date" 
* component 0..* BackboneElement "Some observations have multiple component observations"
  * code 1..1 CodeableConcept "Describes what was observed."
  * value[x] 0..1 Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or time or dateTime or Period "The value of the component observation - typically a code, an amount or a date" 
* status 1..1 code "The status of the result value."
* interpretation 0..* CodeableConcept "A categorical assessment of an observation value"
* referenceRange 0..* BackboneElement "Guidance on how to interpret the value by comparison to a normal or recommended range"
  * low 0..1 Quantity "Low Range, if relevant"
  * high 0..1 Quantity "High Range, if relevant"
* bodySite 0..1 BeModelBodySite "The site on the subject's body where the observation was made (i.e. the target site)"
* certainty 0..1 CodeableConcept "A subjective assessment of the quality of the observation"
* note 0..* Annotation "Comments about the observation or the results"


Logical: BeModelBodySite
Parent: Base
Title: "BodySite Model"
Description: "Body site model"
Id: be-model-bodysite
* bodyLocation 0..1 CodeableConcept "Code that identifies the anatomical location of the specimen on the subject's body"
* bodyLaterality 0..1 CodeableConcept "The laterality of a body site - the side of the body"
* bodyTopography 0..1 CodeableConcept "The topography of the location of the specimen on the subject's body"