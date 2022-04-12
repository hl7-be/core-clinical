Profile: BeObservationCodeableConcept
Parent: CodeableConcept
Id: be-observationcodeableconcept
Description: """This is a supporting profile, only to give guidelines how to express a few of the typical coding systems.
In general, it shall be noted SNOMED-CT is the preferred national terminology. Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)"""
* ^version = "1.0.0"
* coding ^slicing.discriminator.type = #value
* coding ^slicing.discriminator.path = "system"
* coding ^slicing.rules = #open
* coding contains
    LOINC 0..* and
    SNOMED-CT 0..* 
* coding[LOINC].system = "http://loinc.org" (exactly)
* coding[LOINC].code 1..
* coding[SNOMED-CT].system = "http://snomed.info/sct" (exactly)
* coding[SNOMED-CT].code 1..
