ValueSet: BeVSEpisodeOfCareStatus
Id: be-vs-episode-of-care-status
Title: "EpisodeOfCare Status"
Description: "EpisodeOfCare Status - placeholder valueset - the normative definition will be published in the Belgian terminology IG."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-episode-of-care-status"
* ^status = #active
* ^experimental = false

// VS_Status_EpisodeOfCare, CareSet EpisodeOfCare V0.9: the four statuses the
// document lists. A subset of the R4 required binding on EpisodeOfCare.status.
// Deliberately no `cancelled`: V0.9 had business rules referring to a Cancelled
// EpisodeOfCare although its ValueSet never listed the code, and those rules are
// being removed from the document rather than the code added here.
* include $eocstatus#active "Active"
* include $eocstatus#onhold "On Hold"
* include $eocstatus#finished "Finished"
* include $eocstatus#entered-in-error "Entered in Error"
