// Recorder - one search parameter for every core-clinical profile that has a recorder (#144).
// R4 has no standard "recorder" search parameter on these resources. The recorder is
// an element in Condition, Procedure and DeviceUseStatement (source), and the be-core
// BeExtRecorder extension in Observation, Encounter and EpisodeOfCare.
Instance: be-sp-recorder
InstanceOf: SearchParameter
Usage: #definition
Title: "Recorder"
* url = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/SearchParameter/be-sp-recorder"
* name = "BeSPRecorder"
* status = #active
* description = "Search the Belgian clinical resources by their recorder: the person who records the content and takes responsibility for it. Covers BeProblem, BeProcedure, BeDeviceUseStatement (`source`), and BeClinicalObservation, BeScoreResult, BeEncounter and BeEpisodeOfCare (the be-core BeExtRecorder extension)."
* code = #recorder
* base[+] = #Condition
* base[+] = #Procedure
* base[+] = #DeviceUseStatement
* base[+] = #Observation
* base[+] = #Encounter
* base[+] = #EpisodeOfCare
* type = #reference
* expression = "Condition.recorder | Procedure.recorder | DeviceUseStatement.source | Observation.extension('https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder').value.ofType(Reference) | Encounter.extension('https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder').value.ofType(Reference) | EpisodeOfCare.extension('https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder').value.ofType(Reference)"
* xpathUsage = #normal
* target[+] = #Patient
* target[+] = #Practitioner
* target[+] = #PractitionerRole
* target[+] = #Organization
* target[+] = #RelatedPerson
