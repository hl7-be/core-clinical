Instance: GOFSH-GENERATED-ID-0
InstanceOf: Observation
Usage: #example
* status = #final
* identifier.system = "https://api-int.ehealth.fgov.be/belrai/v1/evaluations/"
* identifier.value = "292"
* subject = Reference(Patient/12345678912)
* performer = Reference(careProviders/nihii:12345678)
* issued = "2026-04-02T10:15:00+01:00"
* effectiveDateTime = "2026-04-01T09:00:00+01:00"
* method = #AC-AA "Acute Care - Admission Assessment"
* category = #survey "BelRAI-Assessment"
* code = #AC-AA "Acute Care - Admission Assessment"
* contained[0] = sBMI
* contained[+] = cADL
* hasMember[0] = Reference(sBMI)
* hasMember[+] = Reference(cADL)

Instance: sBMI
InstanceOf: Observation
Usage: #inline
* status = #final
* code = #sBMI "Body Mass Index (sBMI)"
* valueQuantity.value = 28.5
* valueQuantity.unit = "kg/m2"
* interpretation.text = "Overgewicht"
* referenceRange.low.value = 5
* referenceRange.high.value = 70

Instance: cADL
InstanceOf: Observation
Usage: #inline
* status = #final
* code = #cADL "Activiteiten van het dagelijks leven (ADL)"
* valueInteger = 2
* interpretation.text = "Geactiveerd op de mogelijkheid tot verbetering."
* referenceRange.low.value = 0
* referenceRange.high.value = 2
// NOTE: Observation has no `domain` element - dropped to keep the build valid.
// Was: domain = "Functioneel presteren". Say the word and I'll wire it as an extension.
