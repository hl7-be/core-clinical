# uc52-pdfonly - Clinical Core v1.1.0

## Example DiagnosticReport: uc52-pdfonly

Profile: [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md)

## 439926003 (4311000179106, 408475000, 394583002) 

| | |
| :--- | :--- |
| Subject | Unable to get Patient Details |
| When For | 2024-11-11 --> 2024-11-24 |
| Identifier | [BeNSDiagnosticReportDiabetes](NamingSystem-be-ns-diagnostic-report-diabetes.md)/6e126868-aa6a-41ef-b7fb-3c8b690d8ffb |

**Report Details**



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "uc52-pdfonly",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-diagnostic-report-diabetes"]
  },
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeExtRecordedDate",
    "valueDateTime" : "2024-11-25"
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder",
    "valueReference" : {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
        "value" : "0403044007"
      }
    }
  },
  {
    "extension" : [{
      "url" : "concept",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type",
          "code" : "701010000576"
        }]
      }
    }],
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-codeable-reference"
  }],
  "identifier" : [{
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diagnostic-report-diabetes",
    "value" : "6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "4311000179106"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "408475000"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394583002"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "439926003"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "80051207915"
    }
  },
  "effectivePeriod" : {
    "start" : "2024-11-11",
    "end" : "2024-11-24"
  },
  "presentedForm" : [{
    "contentType" : "application/pdf",
    "data" : "JVBERi0xLjANCjEgMCBvYmo8PC9QYWdlcyAyIDAgUj4+ZW5kb2JqIDIgMCBvYmo8PC9LaWRzWzMgMCBSXS9Db3VudCAxPj5lbmRvYmogMyAwIG9iajw8L01lZGlhQm94WzAgMCAzIDNdPj5lbmRvYmoNCnRyYWlsZXI8PC9Sb290IDEgMCBSPj4="
  }]
}

```
