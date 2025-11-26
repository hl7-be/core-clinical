Profile: BeObservation
Parent: Observation
Id: be-observation
Description: """Belgian federal profile for an observation.

Special remarks for KMEHR users:
The FHIR Observation resource captures many things that are in a KMEHR message structured as an 'item'. This includes things like 'vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, or cognitive status […]' ( https://www.hl7.org/fhir/R4/observation.html )
For some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html"""

* code MS
* performer 1..*

* subject only Reference (BePatient or Group or Device or Location or       Patient)
* performer only Reference (BePatient or BeOrganization or BePractitionerRole or BePractitioner or         Practitioner or PractitionerRole or Organization or CareTeam or Patient)

// * subject only Reference(BePatient, Group, Device, Location)
// * performer only Reference (BePatient, BeOrganization, BePractitionerRole, BePractitioner)
