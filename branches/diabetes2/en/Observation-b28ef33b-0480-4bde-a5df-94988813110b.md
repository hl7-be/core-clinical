# b28ef33b-0480-4bde-a5df-94988813110b - Clinical Core v1.1.0

## Example Observation: b28ef33b-0480-4bde-a5df-94988813110b

Profile: [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md)

**BeExtRecorder**: Identifier: [BeNIHDINamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html)/0403044007

**BeExtRecordedDate**: 2024-11-25

**identifier**: [BeNSObservationDiabetes](NamingSystem-be-ns-observation-diabetes.md)/b28ef33b-0480-4bde-a5df-94988813110b

**status**: Final

**category**: 439926003, 258090004

**code**: 865587343

**subject**: Identifier: [BeSSINNamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html)/80051207915

**effective**: 2024-11-11 --> 2024-11-24

**performer**: Identifier: [BeNIHDINamingSystem](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html)/0403044007

**value**: 23 % (Details: UCUM code% = '%')

**device**: [Device: type = 701010000576](Bundle-uc53-bundle.md#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **AppliesTo** |
| * | 25 % (Details: UCUM code% = '%') | ≥180 mg/dL, <250 mg/dL |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "b28ef33b-0480-4bde-a5df-94988813110b",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
  },
  "extension" : [{
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder",
    "valueReference" : {
      "identifier" : {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
        "value" : "0403044007"
      }
    }
  },
  {
    "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeExtRecordedDate",
    "valueDateTime" : "2024-11-25"
  }],
  "identifier" : [{
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-observation-diabetes",
    "value" : "b28ef33b-0480-4bde-a5df-94988813110b"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "439926003"
    }]
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "258090004"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "865587343"
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
  "performer" : [{
    "identifier" : {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi",
      "value" : "0403044007"
    }
  }],
  "valueQuantity" : {
    "value" : 23,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "device" : {
    "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
  },
  "referenceRange" : [{
    "high" : {
      "value" : 25,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "appliesTo" : [{
      "text" : "≥180 mg/dL, <250 mg/dL"
    }]
  }]
}

```
