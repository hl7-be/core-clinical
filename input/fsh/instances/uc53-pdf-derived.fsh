Instance: uc53-bundle
InstanceOf: Bundle
* identifier[+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diagnostic-report-diabetes"
* identifier[=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
* type = #document
* entry[+].resource = uc53-composition
* entry[=].fullUrl = "urn:uuid:66442d1d-2a00-45cc-a4bd-b07c2a376212"
* entry[+].resource = uc53-pdf-derived
* entry[=].fullUrl = "urn:uuid:6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
* entry[+].resource = c611b58d-27bb-49e2-b3ec-bd59e986f5f3
* entry[=].fullUrl = "urn:uuid:c611b58d-27bb-49e2-b3ec-bd59e986f5f3"
* entry[+].resource = 397dffb4-a88a-47d0-b10d-beffcbf6157d
* entry[=].fullUrl = "urn:uuid:397dffb4-a88a-47d0-b10d-beffcbf6157d"
* entry[+].resource = 6756477d-b57a-4611-b048-374d46f52908
* entry[=].fullUrl = "urn:uuid:6756477d-b57a-4611-b048-374d46f52908"
* entry[+].resource = b44fe5d5-f57b-4424-b628-d2baeb447738
* entry[=].fullUrl = "urn:uuid:b44fe5d5-f57b-4424-b628-d2baeb447738"
* entry[+].resource = b28ef33b-0480-4bde-a5df-94988813110b
* entry[=].fullUrl = "urn:uuid:b28ef33b-0480-4bde-a5df-94988813110b"
* entry[+].resource = 449a728d-dfb4-422d-94aa-1a2d43849ee5
* entry[=].fullUrl = "urn:uuid:449a728d-dfb4-422d-94aa-1a2d43849ee5"
* entry[+].resource = a6665182-e11a-40a9-ae83-9b093a353f16
* entry[=].fullUrl = "urn:uuid:a6665182-e11a-40a9-ae83-9b093a353f16"
* entry[+].resource = 454a29d0-0893-458a-b2e5-25452b89e29a
* entry[=].fullUrl = "urn:uuid:454a29d0-0893-458a-b2e5-25452b89e29a"
* entry[+].resource = device
* entry[=].fullUrl = "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
* timestamp = "2024-11-25T00:00:00.000+01:00"

Instance: uc53-composition
InstanceOf: Composition
//* id = "66442d1d-2a00-45cc-a4bd-b07c2a376212"
* status = #final
* type = $sct#439926003
* date = "2024-11-25"
* author.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* author.identifier.value = "0403044007"
* title = "Diabetes device report"
* section.entry = Reference(urn:uuid:6e126868-aa6a-41ef-b7fb-3c8b690d8ffb)

Instance: uc53-pdf-derived
InstanceOf: BeDiagnosticReportDiabetes
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diagnostic-report-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#4311000179106
* category[+] = $sct#408475000
* category[+] = $sct#394583002
* code = $sct#439926003
* extension[device].extension[concept].valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type#701010000576
* status = #final
* presentedForm.data = "JVBERi0xLjANCjEgMCBvYmo8PC9QYWdlcyAyIDAgUj4+ZW5kb2JqIDIgMCBvYmo8PC9LaWRzWzMgMCBSXS9Db3VudCAxPj5lbmRvYmogMyAwIG9iajw8L01lZGlhQm94WzAgMCAzIDNdPj5lbmRvYmoNCnRyYWlsZXI8PC9Sb290IDEgMCBSPj4="
* presentedForm.contentType = #"application/pdf"
* result[+] = Reference(urn:uuid:c611b58d-27bb-49e2-b3ec-bd59e986f5f3)
* result[+] = Reference(urn:uuid:397dffb4-a88a-47d0-b10d-beffcbf6157d)
* result[+] = Reference(urn:uuid:6756477d-b57a-4611-b048-374d46f52908)
* result[+] = Reference(urn:uuid:b44fe5d5-f57b-4424-b628-d2baeb447738)
* result[+] = Reference(urn:uuid:b28ef33b-0480-4bde-a5df-94988813110b)
* result[+] = Reference(urn:uuid:449a728d-dfb4-422d-94aa-1a2d43849ee5)
* result[+] = Reference(urn:uuid:a6665182-e11a-40a9-ae83-9b093a353f16)
* result[+] = Reference(urn:uuid:454a29d0-0893-458a-b2e5-25452b89e29a)

Instance: c611b58d-27bb-49e2-b3ec-bd59e986f5f3
InstanceOf: BeObservationDiabetes
Description: "Coefficient of variation"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "c611b58d-27bb-49e2-b3ec-bd59e986f5f3"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#778232399
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 6
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.high.value = 34
* referenceRange.high.unit = "%"
* referenceRange.high.code = #"%"
* referenceRange.high.system = "http://unitsofmeasure.org"

Instance: 397dffb4-a88a-47d0-b10d-beffcbf6157d
InstanceOf: BeObservationDiabetes
Description: "Days sensor worn"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "397dffb4-a88a-47d0-b10d-beffcbf6157d"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#757492266
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 14
* valueQuantity.unit = "days"
* valueQuantity.code = #"d"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.low.value = 14
* referenceRange.low.unit = "days"
* referenceRange.low.code = #"d"
* referenceRange.low.system = "http://unitsofmeasure.org"



Instance: 6756477d-b57a-4611-b048-374d46f52908
InstanceOf: BeObservationDiabetes
Description: "% Data Captured"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6756477d-b57a-4611-b048-374d46f52908"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#242282937
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 96
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.low.value = 70
* referenceRange.low.unit = "%"
* referenceRange.low.code = #"%"
* referenceRange.low.system = "http://unitsofmeasure.org"


Instance: b44fe5d5-f57b-4424-b628-d2baeb447738
InstanceOf: BeObservationDiabetes
Description: "TAR-Very high"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "b44fe5d5-f57b-4424-b628-d2baeb447738"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#124011008
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 20
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.high.value = 5
* referenceRange.high.unit = "%"
* referenceRange.high.code = #"%"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.appliesTo.text = "≥ 250 mg/dL"


Instance: b28ef33b-0480-4bde-a5df-94988813110b
InstanceOf: BeObservationDiabetes
Description: "TAR-High"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "b28ef33b-0480-4bde-a5df-94988813110b"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#865587343
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 23
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.high.value = 25
* referenceRange.high.unit = "%"
* referenceRange.high.code = #"%"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.appliesTo.text = "≥180 mg/dL, <250 mg/dL"

Instance: 449a728d-dfb4-422d-94aa-1a2d43849ee5
InstanceOf: BeObservationDiabetes
Description: "TIR"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "449a728d-dfb4-422d-94aa-1a2d43849ee5"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#438565545
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 47
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.low.value = 25
* referenceRange.low.unit = "%"
* referenceRange.low.code = #"%"
* referenceRange.low.system = "http://unitsofmeasure.org"
* referenceRange.appliesTo.text = "≥70 mg/dL, <180 mg/dL"



Instance: a6665182-e11a-40a9-ae83-9b093a353f16
InstanceOf: BeObservationDiabetes
Description: "TBR Time below range - low"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "a6665182-e11a-40a9-ae83-9b093a353f16"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#278399267
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 4
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.high.value = 5
* referenceRange.high.unit = "%"
* referenceRange.high.code = #"%"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.appliesTo.text = "≥54 mg/dL, <70 mg/dL"


Instance: 454a29d0-0893-458a-b2e5-25452b89e29a
InstanceOf: BeObservationDiabetes
Description: "TBR Time below range – very low"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "454a29d0-0893-458a-b2e5-25452b89e29a"
* extension[BeExtRecordedDate].valueDateTime = "2024-11-25"
* effectivePeriod.start = "2024-11-11"
* effectivePeriod.end = "2024-11-24"
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* subject.identifier.value = "80051207915"
* extension[BeExtRecorder].valueReference.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* extension[BeExtRecorder].valueReference.identifier.value = "0403044007"
* category[+] = $sct#439926003
* category[+] = $sct#258090004
* code = $sct#364527445
* device = Reference(urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e)
* status = #final
* valueQuantity.value = 6
* valueQuantity.unit = "%"
* valueQuantity.code = #"%"
* valueQuantity.system = "http://unitsofmeasure.org"
* performer.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* performer.identifier.value = "0403044007"
* referenceRange.high.value = 2
* referenceRange.high.unit = "%"
* referenceRange.high.code = #"%"
* referenceRange.high.system = "http://unitsofmeasure.org"
* referenceRange.appliesTo.text = "< 54 mg/dL"

Instance: device
InstanceOf: Device
* type.coding.system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type"
* type.coding.code = #701010000576


