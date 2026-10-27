Logical: BeModelScoreResult
Parent: Base
Id: BeModelScoreResult
Title: "BeScoreResult model"
Description: "Logical model for the BeScoreResult CareSet - the result of a standardised assessment scale (score) taken for a patient."
Characteristics: #can-be-target

// Faithful transposition of the element table of CareSet BeScoreResult V0.1 (NL and FR, 24/09/2026).
// The NL and FR element tables agree; both source texts are quoted below.

// NL: Identifier van de evaluatieschaalafname.
// FR: Identifiant de la passation de l'echelle d'evaluation.
* identifier 1..* Identifier "Identifier of this administration of the assessment scale"

// NL: De patient waarbij de evaluatieschaal wordt afgenomen.
// FR: Le patient aupres duquel l'echelle d'evaluation est realisee.
* patient 1..1 Reference "The patient the assessment scale is taken for"

// NL: Zorgprofessional of organisatie verantwoordelijk voor het uitvoeren van de gestandaardiseerde evaluatieschaal.
// FR: Professionnel de soins ou organisation responsable de la realisation de l'echelle d'evaluation standardisee.
* evaluator 0..* Reference "Care professional or organization responsible for taking the standardised assessment scale"

// NL: Recorder is de persoon of het systeem dat de beoordeling in het dossier registreert (datainvoerder).
// FR: Le recorder est la personne ou le systeme qui enregistre l'evaluation dans le dossier (encodeur de donnees).
* recorder 1..1 Reference "The person or system that records the assessment in the record - the same care provider, another collaborator, or the software itself when recording is automatic"

// NL: Datum waarop de gestandaardiseerde evaluatieschaal finaal wordt ingegeven in het systeem.
// FR: Date a laquelle l'echelle d'evaluation standardisee est finalement encodee dans le systeme.
* recordedDate 1..1 dateTime "Date the standardised assessment scale was finally encoded in the system"

// NL: Datum van het eindpunt van de observatie- en/of referentieperiode voor alle informatie die bij de beoordeling wordt verzameld.
// FR: Date de fin de la periode d'observation et/ou de reference pour toutes les informations recueillies lors de l'evaluation.
* observationDate 1..1 dateTime "End date of the observation and/or reference period for all information collected during the assessment"

// NL: Mechanisme in FHIR om verschillende observaties te groeperen.
// FR: Mecanisme dans FHIR permettant de regrouper differentes observations.
* hasMember 0..* Reference "Groups the separate observations that make up this assessment"

// NL: De categorie van de medische evaluatie. VS_Observation_Category
// FR: La categorie de l'evaluation medicale. VS_Observation_Category
* category 0..* CodeableConcept "The category of the medical assessment" "Value set in the CareSet: VS_Observation_Category"

// NL: Dit identificeert de evaluatieschaal. VS_BeScoreResult_Code
// FR: Ceci identifie l'echelle d'evaluation. VS_BeScoreResult_Code
* code 1..1 CodeableConcept "Identifies the assessment scale, for example SNOMED 273547007 Katz activities of daily living (assessment scale)" "Value set in the CareSet: VS_BeScoreResult_Code"

// NL: Het mogelijke scorebereik van de schaal (bv. 0-12).
// FR: L'intervalle de score possible de l'echelle (p. ex. 0-12).
* minMax 0..1 Range "The possible score range of the scale, for example 0-12"

// NL: De (berekende) schaalscore als getal met eenheid, of een concept uit SNOMED-CT parent 404684003 Clinical finding.
// FR: Le score de l'echelle (calcule) sous forme de nombre avec unite, ou un concept issu du parent SNOMED-CT 404684003 Clinical finding.
// *TODO* datatype: the CareSet maps this to Observation.ValueCode but describes both a number with a unit (NRS = 7)
// and a coded clinical finding (249954005 Movement against gravity). Modelled as a choice pending confirmation.
* value[x] 0..1 Quantity or CodeableConcept "The score of the scale, as a number with a unit or as a coded clinical finding" "Value set in the CareSet: VS_BeScoreResult_Value"

// NL: Status van de observatie (van een zorgschaal of CAP of totaalscore). Als default wordt Final ingevuld. VS__Status
// FR: Statut de l'observation (d'une echelle de soins, d'un CAP ou d'un score total). Par defaut, Final. VS__Status
* status 1..1 code "Status of the observation" "Value set in the CareSet: VS__Status - final | entered-in-error"

// NL: Hoe de observatie bekomen is. VS_BeScoreResult_method
// FR: Comment l'observation a ete obtenue. VS_BeScoreResult_method
* method 0..1 CodeableConcept "How the observation was obtained" "Value set in the CareSet: VS_BeScoreResult_Method"

// NL: Dit is de beschrijving die bij de waarde van de score hoort.
// FR: Il s'agit de la description qui correspond a la valeur du score.
// *TODO* the CareSet maps this to Observation.Code.Display 0..*, but display is 0..1 on a Coding and the example
// given (score 10 on the aggressive behaviour scale = severe aggression) describes the value, not the code.
* codeDisplay 0..* string "The description corresponding to the value of the score"

// NL: Dit is de conclusie die wordt getrokken bij de totale score.
// FR: Il s'agit de la conclusion tiree a partir du score total.
* interpretation 0..* CodeableConcept "The conclusion drawn from the total score"

// NL: Component.Code / Component.value / Component.Interpretation - de deelscores.
// FR: Component.Code / Component.value / Component.Interpretation - les sous-scores.
// The CareSet lists the three Component.* rows without a parent Component row; grouped here.
* component 0..* Base "A sub-score or component of the assessment scale"
  * code 0..* CodeableConcept "Identifies the sub-score or component of the assessment scale, for example a sub-scale within a standardised scale"
  * value[x] 0..1 Quantity or CodeableConcept "The numeric value or score for this component"
  * interpretation 0..* CodeableConcept "The clinical interpretation of the sub-score, as text or coded"

// NL: Vrij tekstveld.
// FR: Champ de texte libre.
* note 0..* Annotation "Free text field"
