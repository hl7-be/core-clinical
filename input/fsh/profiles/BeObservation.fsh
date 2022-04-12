Profile: BeObservation
Parent: Observation
Id: be-observation
Description: """Belgian federal profile for an observation. Initially based on the functional description of the NIHDI.
As Observation is used in many instances in FHIR, please refer to the HL7 specs of the base resource for guidance around expression of actual values using UCUM, methods, location on body etc.

Special remarks for KMEHR users:
The FHIR Observation resource captures many things that are in a KMEHR message structured as an 'item'. This includes things like 'vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, or cognitive status […]' ( https://www.hl7.org/fhir/R4/observation.html )
For some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html"""
* ^version = "1.0.0"
* code only BeObservationCodeableConcept
* code MS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\n\r\nFor providing systems, it is RECOMMENDED to express this using a code and consuming software SHALL record this.\r\nIn general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)"
* subject only Reference(Patient or Group or Device or Location or BePatient)
* performer 1..
* performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson or BePatient or BeOrganization or BePractitionerRole or BePractitioner)
* performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.\r\n\r\nSpecial remarks for KMEHR users:\r\nIn a KMEHR context, this would be 'author'."