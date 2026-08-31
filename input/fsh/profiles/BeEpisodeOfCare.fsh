Profile: BeEpisodeOfCare
Parent: EpisodeOfCare
Id: be-episode-of-care
Title: "BeEpisodeOfCare"
Description: "A period during which care related to one specific goal or problem is provided to a patient by one or more healthcare providers or organisations. The EpisodeOfCare is the container other CareSets (for example Encounter, CareTeam) are linked to; it carries no clinical content itself."

// Mapping of the CareSet EpisodeOfCare (V0.8) elements onto R4 EpisodeOfCare.
// Where R4 has an equivalent element it is used; extensions are only used for
// concepts R4 does not have.

// Business identifier - 1..*
* identifier 1..* MS

// Patient - 1..1
* patient 1..1 MS
* patient only Reference(BePatient)

// RecordedDate - 1..1 (be-core extension; R4 EpisodeOfCare has no recorded date)
* extension contains BeExtRecordedDate named recordedDate 1..1 MS
* extension[recordedDate] ^short = "RecordedDate"
* extension[recordedDate] ^definition = "Recording date by the Author or Recorder (date of the last update). Enables CareSet history management through the pair Business Identifier - RecordedDate, which guarantees access to the latest version of the content."

// Status - 1..1 (R4 required binding on EpisodeOfCare.status is kept)
* status 1..1 MS

// Author - 1..1 (be-core extension; R4 EpisodeOfCare has no author/recorder)
* extension contains BeExtRecorder named author 1..1 MS
* extension[author] ^short = "Author"
* extension[author] ^definition = "The healthcare professional who takes responsibility for the recorded content."

// Period - 1..1
* period 1..1 MS

// Reason - 1..1, carried by the native R4 EpisodeOfCare.diagnosis.condition reference to the
// problem, with the be-core BeExtCodeableConcept extension (context Element) on that reference
// so the problem can also be sent as a code (VS_Encounter_Reason).
* diagnosis 1..1 MS
* diagnosis ^short = "Reason - the problem treated during the EpisodeOfCare"
* diagnosis.condition 1..1 MS
* diagnosis.condition only Reference(BeProblem)
* diagnosis.condition.extension contains BeExtCodeableConcept named code 0..1 MS
* diagnosis.condition.extension[code] ^short = "Coded reason"
* diagnosis.condition.extension[code] ^definition = "The problem treated during the EpisodeOfCare, as a code, for when no BeProblem resource is referenced."

// Note - 0..* (be-core extension; R4 EpisodeOfCare has no note)
* extension contains BeExtSimpleNote named note 0..* MS
* extension[note] ^short = "Note"
* extension[note] ^definition = "Optional additional remark."

// Managing Organization - 0..* in the CareSet; R4 EpisodeOfCare.managingOrganization is 0..1
* managingOrganization 0..1 MS
* managingOrganization only Reference(BeOrganization)

// CareTeam - 0..* (R4 EpisodeOfCare.team)
* team 0..* MS
* team ^short = "*TODO* CareTeam -> BeCareTeam"
* team ^definition = "CareTeam involved in the care carried out within this EpisodeOfCare."
