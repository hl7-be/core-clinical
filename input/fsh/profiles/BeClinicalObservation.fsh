Profile: BeClinicalObservation
Parent: Observation
Id: be-clinical-observation
Description: "Belgian federal profile for a clinical observation."


//* ^version = "1.0.0"

* identifier 1..* MS
* issued MS
* effective[x] 1..1 MS

//* recorder 

* performer MS
* subject 1..1 MS
* basedOn MS // requestId
* partOf MS

* specimen MS
* category MS
* code MS
* value[x] MS
* component MS
* code MS

* value[x] MS

* status MS
* interpretation MS

* referenceRange MS

* hasMember MS
* method MS
// * bodyLocation *
// * bodyLaterality *
// * bodyTopography *

// * certainty MS

// BodyLaterality - 0..1 (Belgian Extension)
* bodySite.extension contains BeExtLaterality named laterality 0..1 MS
* bodySite.extension[laterality] ^definition = "Specifies the laterality of the body where the procedure was performed if this precision is not contained in the code (right, left, both)."
* bodySite.extension[laterality] ^short = "Body laterality"

// BodyTopography - 0..1 (Belgian Extension)
* bodySite.extension contains BeExtBodyTopography named topography 0..1 MS
* bodySite.extension[topography] ^definition = "Describes the location or relative position of the procedure on the body, such as superior/inferior, medial/lateral or internal/external."
* bodySite.extension[topography] ^short = "Body topography"


* device MS

* note MS




* code only BeObservationCodeableConcept
* code MS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nFor providing systems, it is RECOMMENDED to express this using a code and consuming software SHALL record this.\r\nIn general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)"
* subject only Reference (Patient or Group or Device or Location or BePatient)
* performer 1..
* performer only Reference (Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or BePatient or BeOrganization or BePractitionerRole or BePractitioner)
* performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\nSpecial remarks for KMEHR users:\r\nIn a KMEHR context, this would be 'author'."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1


