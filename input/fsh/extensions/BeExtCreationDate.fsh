// // Defined here for now, but the canonical is the be-core one: this extension is a transversal
// // concept and is expected to move to hl7.fhir.be.core. Keeping the /core/ canonical means the
// // URL stays stable when it does.
// Extension: BeExtCreationDate
// Id: be-ext-creation-date
// Title: "BeExtCreationDate"
// Description: "Date of first registration of the content, by the Author or Recorder. Unlike the RecordedDate, it does not change when the content is updated."
// * ^url = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-creation-date"
// * ^context.type = #element
// * ^context.expression = "DomainResource"
// * value[x] only dateTime
// * valueDateTime 1..1
