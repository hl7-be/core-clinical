ValueSet: BeVSEpisodeOfCareStatus
Id: be-vs-episode-of-care-status
Title: "EpisodeOfCare Status"
Description: "EpisodeOfCare Status - placeholder valueset - the normative definition will be published in the Belgian terminology IG."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-episode-of-care-status"
* ^status = #active
* ^experimental = false

// VS_EpisodeOfCare_Status, CareSet EpisodeOfCare V1.0: the four statuses the
// document lists. A subset of the R4 required binding on EpisodeOfCare.status.
// No `cancelled`: the document neither lists it nor refers to it.
* include $eocstatus#active "Active"
* include $eocstatus#onhold "On Hold"
* include $eocstatus#finished "Finished"
* include $eocstatus#entered-in-error "Entered in Error"
