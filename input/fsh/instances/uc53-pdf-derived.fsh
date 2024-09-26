Instance: uc52-pdf-derived
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
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc1)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc2)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc3)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc4)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc5)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc6)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc7)
* result[+] = Reference(6e126868-aa6a-41ef-b7fb-3c8b690d8ffc8)

Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc1
InstanceOf: BeObservationDiabetes
Description: "Coefficient of variation"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc1"
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
* device = Reference(device)
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

Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc2
InstanceOf: BeObservationDiabetes
Description: "Days sensor worn"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc2"
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
* device = Reference(device)
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



Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc3
InstanceOf: BeObservationDiabetes
Description: "% Data Captured"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc3"
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
* device = Reference(device)
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


Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc4
InstanceOf: BeObservationDiabetes
Description: "TAR-Very high"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc4"
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
* device = Reference(device)
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


Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc5
InstanceOf: BeObservationDiabetes
Description: "TAR-High"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc5"
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
* device = Reference(device)
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

Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc6
InstanceOf: BeObservationDiabetes
Description: "TIR"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc6"
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
* device = Reference(device)
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



Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc7
InstanceOf: BeObservationDiabetes
Description: "TBR Time below range - low"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc7"
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
* device = Reference(device)
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


Instance: 6e126868-aa6a-41ef-b7fb-3c8b690d8ffc8
InstanceOf: BeObservationDiabetes
Description: "TBR Time below range – very low"
* identifier[UUID][+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes"
* identifier[UUID][=].value = "6e126868-aa6a-41ef-b7fb-3c8b690d8ffc8"
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
* device = Reference(device)
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


