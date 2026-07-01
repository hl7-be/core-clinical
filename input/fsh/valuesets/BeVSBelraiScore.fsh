// The BelRAI subset of Observation.code values.
// This is the value set to edit when the BelRAI scale/screener list changes;
// BeVSScore composes it in, so the main score value set updates automatically.

ValueSet: BeVSBelraiScore
Id: be-vs-belrai-score
Title: "BelRAI Score Value Set"
Description: "Codes identifying each BelRAI scoring scale/screener, used as Observation.code (BeScoreResult)."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-belrai-score"
* ^status = #active
* ^experimental = false

* include codes from system BeCSBelraiScore
