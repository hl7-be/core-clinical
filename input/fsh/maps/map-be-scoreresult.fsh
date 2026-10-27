// Generated from mappings/BeModelScoreResult-be-scoreresult.csv - do not edit, regenerate with: python mappings/generate-conceptmaps.py
Instance: map-be-scoreresult
InstanceOf: ConceptMap
Usage: #definition
Title: "BeModelScoreResult to be-scoreresult mapping"
Description: "Mapping from the BeModelScoreResult logical model to the be-scoreresult profile"
* url = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ConceptMap/map-be-scoreresult"
* name = "MapBeScoreresult"
* status = #draft
* experimental = false
* group[+]
  * source = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelScoreResult"
  * target = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-scoreresult"
  * insert ConceptMapElementWithComment(BeModelScoreResult.identifier, Identifier, Observation.identifier, Business Identifier for observation, equivalent, 1..* as in the CareSet.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.patient, Patient, Observation.subject, Who and/or what the observation is about, equivalent, 1..1 as in the CareSet. *TODO* the profile also allows Group; the CareSet says patient.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.evaluator, Evaluator, Observation.performer, Who is responsible for the observation, equivalent, Reference(BePractitioner | BePractitionerRole | BeOrganization\). *TODO* the profile also allows BePatient; the CareSet says care professional or organisation.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.recorder, Recorder, Observation.extension:recorder, BeExtRecorder, equivalent, R4 Observation has no recorder: be-core extension BeExtRecorder. *TODO* open question: the CareSet allows the software itself as recorder; BeExtRecorder asserts responsibility by a natural person.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.recordedDate, Recorded Date, Observation.extension:recordedDate, BeExtRecordedDate, equivalent, R4 Observation has no recordedDate; Observation.issued is an instant and means something else. be-core extension BeExtRecordedDate.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.observationDate, Observation Date, Observation.effectivePeriod, Clinically relevant time/time-period for observation, inexact, *TODO* the CareSet maps this to effectiveDateTime; the profile restricts effective[x] to Period. Changing it breaks senders of the published 1.0.0 - open question.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.hasMember, hasMember, Observation.hasMember, Related resource that belongs to the Observation group, equivalent, Used when the parts of a scale are taken at different times\, by different performers or on different domains.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.category, Category, Observation.category, Classification of type of observation, equivalent, 0..* from VS_Observation_Category (the international value set\). *TODO* the profile binds BeVSScoreCategory (required\) - to be relaxed.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.code, Code, Observation.code, Type of observation (code / type\), equivalent, Bound (required\) to be-vs-score: the curated code list kept by the WG of 24-09. The CareSet describes VS_BeScoreResult_Code as the descendants of 782487009 and 445536008.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.minMax, Min-Max, Observation.referenceRange, Provides guide for interpretation, equivalent, Restricted to 0..1 as in the CareSet.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.value[x], Value/Score, Observation.value[x], Actual result, equivalent, All R4 value types allowed. VS_BeScoreResult_Value (<< 404684003 for SNOMED CT values\) not bound yet.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.status, Status, Observation.status, registered | preliminary | final | amended +, inexact, *TODO* the CareSet allows only final and entered-in-error; the profile keeps the R4 required binding to all 9 codes.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.method, Method, Observation.method, How it was done, equivalent, 0..1. VS_BeScoreResult_Method (<< 254291000 Staging and scales\) not bound yet.)
  * insert ConceptMapElementUnmatched(BeModelScoreResult.codeDisplay, Observation.Code.Display, The CareSet maps this to Observation.code.display 0..*\, but display is 0..1 on a Coding and the CareSet's example describes the value\, not the code. *TODO* open question.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.interpretation, Interpretation, Observation.interpretation, High\, low\, normal\, etc., equivalent, 0..* as in the CareSet.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.component, Component, Observation.component, Component results, equivalent, Sub-scores taken at the same time by the same performer in one clinical act.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.component.code, Component.Code, Observation.component.code, Type of component observation (code / type\), narrower, R4 component.code is 1..1; the CareSet says 0..*. A change of the CareSet is requested.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.component.value[x], Component.value, Observation.component.value[x], Actual component result, equivalent, All R4 value types allowed.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.component.interpretation, Component.Interpretation, Observation.component.interpretation, High\, low\, normal\, etc., equivalent, 0..* as in the CareSet.)
  * insert ConceptMapElementWithComment(BeModelScoreResult.note, Note, Observation.note, Comments about the observation, equivalent, 0..* as in the CareSet.)
