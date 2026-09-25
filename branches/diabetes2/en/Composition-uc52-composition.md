# Diabetes device report - Clinical Core v1.1.0

## Example Composition: Diabetes device report

**status**: Final

**type**: 439926003

**date**: 2024-11-25

**author**: Identifier: [BeNIHDINamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html)/0403044007

**title**: Diabetes device report



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "uc52-composition",
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "439926003"
    }]
  },
  "date" : "2024-11-25",
  "author" : [{
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
      "value" : "0403044007"
    }
  }],
  "title" : "Diabetes device report",
  "section" : [{
    "entry" : [{
      "reference" : "urn:uuid:6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
    }]
  }]
}

```
