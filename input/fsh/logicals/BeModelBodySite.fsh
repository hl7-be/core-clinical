Logical: BeModelBodySite
Parent: Base
Title: "BodySite Model"
Description: "Body site model"
Id: BeModelBodySite
// The value set bindings live here, so every model that types an element as
// BeModelBodySite gets the same ones. Topography is preferred, matching
// BeExtBodyTopography; location and laterality are required.
* bodyLocation 0..1 CodeableConcept "Code that identifies the anatomical location of the specimen on the subject's body"
* bodyLocation from BeVSBodySite (required)
* bodyLaterality 0..1 CodeableConcept "The laterality of a body site - the side of the body"
* bodyLaterality from BeVSLaterality (required)
* bodyTopography 0..1 CodeableConcept "The topography of the location of the specimen on the subject's body"
* bodyTopography from BeVSBodyTopography (preferred)
