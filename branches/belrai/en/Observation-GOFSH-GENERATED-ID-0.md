# GOFSH-GENERATED-ID-0 - Clinical Core v1.2.0

## Example Observation: GOFSH-GENERATED-ID-0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "GOFSH-GENERATED-ID-0",
  "contained" : [{
    "resourceType" : "Observation",
    "id" : "sBMI",
    "status" : "final",
    "code" : {
      "coding" : [{
        "code" : "sBMI",
        "display" : "Body Mass Index (sBMI)"
      }]
    },
    "valueQuantity" : {
      "value" : 28.5,
      "unit" : "kg/m2"
    },
    "interpretation" : [{
      "text" : "Overgewicht"
    }],
    "referenceRange" : [{
      "low" : {
        "value" : 5
      },
      "high" : {
        "value" : 70
      }
    }]
  },
  {
    "resourceType" : "Observation",
    "id" : "cADL",
    "status" : "final",
    "code" : {
      "coding" : [{
        "code" : "cADL",
        "display" : "Activiteiten van het dagelijks leven (ADL)"
      }]
    },
    "valueInteger" : 2,
    "interpretation" : [{
      "text" : "Geactiveerd op de mogelijkheid tot verbetering."
    }],
    "referenceRange" : [{
      "low" : {
        "value" : 0
      },
      "high" : {
        "value" : 2
      }
    }]
  }],
  "identifier" : [{
    "system" : "https://api-int.ehealth.fgov.be/belrai/v1/evaluations/",
    "value" : "292"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "code" : "survey",
      "display" : "BelRAI-Assessment"
    }]
  }],
  "code" : {
    "coding" : [{
      "code" : "AC-AA",
      "display" : "Acute Care - Admission Assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/12345678912"
  },
  "effectiveDateTime" : "2026-04-01T09:00:00+01:00",
  "issued" : "2026-04-02T10:15:00+01:00",
  "performer" : [{
    "reference" : "careProviders/nihii:12345678"
  }],
  "method" : {
    "coding" : [{
      "code" : "AC-AA",
      "display" : "Acute Care - Admission Assessment"
    }]
  },
  "hasMember" : [{
    "reference" : "#sBMI"
  },
  {
    "reference" : "#cADL"
  }]
}

```
