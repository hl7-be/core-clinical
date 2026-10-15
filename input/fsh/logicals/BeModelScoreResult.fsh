Logical: BeModelScoreResult
Parent: Base
Id: BeModelScoreResult
Title: "BeScoreResult model"
Description: "Logical model for the BeScoreResult CareSet - the result of a standardised assessment scale (score) taken for a patient."
Characteristics: #can-be-target

// Faithful transposition of the element table of CareSet BeScoreResult V0.1 (FR).
// There is no NL version of V0.1, so only the FR source text is quoted below.

// FR: Identifiant de la passation de l'echelle d'evaluation.
* identifier 1..* Identifier "Identifier of this administration of the assessment scale"

// FR: Le patient aupres duquel l'echelle d'evaluation est realisee.
* patient 1..1 Reference "The patient the assessment scale is taken for"

// FR: Professionnel de soins ou organisation responsable de la realisation de l'echelle d'evaluation standardisee.
* evaluator 0..* Reference "Care professional or organization responsible for taking the standardised assessment scale"

// FR: Le recorder est la personne ou le systeme qui enregistre l'evaluation dans le dossier (encodeur de donnees).
* recorder 1..1 Reference "The person or system that records the assessment in the record - the same care provider, another collaborator, or the software itself when recording is automatic"

// FR: Date a laquelle l'echelle d'evaluation standardisee est finalement encodee dans le systeme.
* recordedDate 1..1 dateTime "Date the standardised assessment scale was finally encoded in the system"

// FR: Date de fin de la periode d'observation et/ou de reference pour toutes les informations recueillies lors de l'evaluation.
* observationDate 1..1 dateTime "End date of the observation and/or reference period for all information collected during the assessment"

// FR: Mecanisme dans FHIR permettant de regrouper differentes observations.
* hasMember 0..* Reference "Groups the separate observations that make up this assessment"

// FR: La categorie de l'evaluation medicale. VS_Observation_Category
* category 0..* CodeableConcept "The category of the medical assessment" "Value set in the CareSet: VS_Observation_Category"

// FR: Ceci identifie l'echelle d'evaluation. VS_BeScoreResult_Code
* code 1..1 CodeableConcept "Identifies the assessment scale, for example SNOMED 273547007 Katz activities of daily living (assessment scale)" "Value set in the CareSet: VS_BeScoreResult_Code"

// FR: L'intervalle de score possible de l'echelle (p. ex. 0-12).
* minMax 0..1 Range "The possible score range of the scale, for example 0-12"

// FR: Le score de l'echelle (calcule) sous forme de nombre avec unite, ou un concept issu du parent SNOMED-CT 404684003 Clinical finding.
// *TODO* datatype: the CareSet maps this to Observation.ValueCode but describes both a number with a unit (NRS = 7)
// and a coded clinical finding (249954005 Movement against gravity). Modelled as a choice pending confirmation.
* value[x] 0..1 Quantity or CodeableConcept "The score of the scale, as a number with a unit or as a coded clinical finding" "Value set in the CareSet: VS_BeScoreResult_Value"

// FR: Statut de l'observation (d'une echelle de soins, d'un CAP ou d'un score total). Par defaut, Final. VS__Status
* status 1..1 code "Status of the observation" "Value set in the CareSet: VS__Status - final | entered-in-error"

// FR: Comment l'observation a ete obtenue. VS_BeScoreResult_method
* method 0..1 CodeableConcept "How the observation was obtained" "Value set in the CareSet: VS_BeScoreResult_Method"

// FR: Il s'agit de la description qui correspond a la valeur du score.
// *TODO* the CareSet maps this to Observation.Code.Display 0..*, but display is 0..1 on a Coding and the example
// given (score 10 on the aggressive behaviour scale = severe aggression) describes the value, not the code.
* codeDisplay 0..* string "The description corresponding to the value of the score"

// FR: Il s'agit de la conclusion tiree a partir du score total.
* interpretation 0..* CodeableConcept "The conclusion drawn from the total score"

// FR: Component.Code / Component.value / Component.Interpretation - les sous-scores.
// The CareSet lists the three Component.* rows without a parent Component row; grouped here.
* component 0..* Base "A sub-score or component of the assessment scale"
  * code 0..* CodeableConcept "Identifies the sub-score or component of the assessment scale, for example a sub-scale within a standardised scale"
  * value[x] 0..1 Quantity or CodeableConcept "The numeric value or score for this component"
  * interpretation 0..* CodeableConcept "The clinical interpretation of the sub-score, as text or coded"

// FR: Champ de texte libre.
* note 0..* Annotation "Free text field"
