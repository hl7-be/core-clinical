Instance: uc52-pdfonly
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