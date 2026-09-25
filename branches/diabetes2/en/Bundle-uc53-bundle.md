# uc53-bundle - Clinical Core v1.1.0

## Example Bundle: uc53-bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "uc53-bundle",
  "identifier" : {
    "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diagnostic-report-diabetes",
    "value" : "6e126868-aa6a-41ef-b7fb-3c8b690d8ffb"
  },
  "type" : "document",
  "timestamp" : "2024-11-25T00:00:00.000+01:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:66442d1d-2a00-45cc-a4bd-b07c2a376212",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "uc53-composition",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_uc53-composition\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition uc53-composition</b></p><a name=\"uc53-composition\"> </a><a name=\"hcuc53-composition\"> </a><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span></p><p><b>date</b>: 2024-11-25</p><p><b>author</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>title</b>: Diabetes device report</p></div>"
      },
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
  },
  {
    "fullUrl" : "urn:uuid:6e126868-aa6a-41ef-b7fb-3c8b690d8ffb",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "uc53-pdf-derived",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-diagnostic-report-diabetes"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_uc53-pdf-derived\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport uc53-pdf-derived</b></p><a name=\"uc53-pdf-derived\"> </a><a name=\"hcuc53-pdf-derived\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-diagnostic-report-diabetes.html\">BeDiagnosticReportDiabetes</a></p></div><h2><span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span> (<span title=\"Codes:{http://snomed.info/sct 4311000179106}\">4311000179106</span>, <span title=\"Codes:{http://snomed.info/sct 408475000}\">408475000</span>, <span title=\"Codes:{http://snomed.info/sct 394583002}\">394583002</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Unable to get Patient Details</td></tr><tr><td>When For</td><td>2024-11-11 --&gt; 2024-11-24</td></tr><tr><td>Identifier</td><td> <a href=\"NamingSystem-be-ns-diagnostic-report-diabetes.html\">BeNSDiagnosticReportDiabetes</a>/6e126868-aa6a-41ef-b7fb-3c8b690d8ffb</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Reference Range</b></td><td><b>Flags</b></td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-c611b58d-27bb-49e2-b3ec-bd59e986f5f3\"><span title=\"Codes:{http://snomed.info/sct 778232399}\">778232399</span></a></td><td>6 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&lt;34 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-397dffb4-a88a-47d0-b10d-beffcbf6157d\"><span title=\"Codes:{http://snomed.info/sct 757492266}\">757492266</span></a></td><td>14 days<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  coded = 'd')</span></td><td>&gt;14 days<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  coded = 'd')</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-6756477d-b57a-4611-b048-374d46f52908\"><span title=\"Codes:{http://snomed.info/sct 242282937}\">242282937</span></a></td><td>96 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&gt;70 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-b44fe5d5-f57b-4424-b628-d2baeb447738\"><span title=\"Codes:{http://snomed.info/sct 124011008}\">124011008</span></a></td><td>20 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&lt;5 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span> for <span title=\"Codes:\">≥ 250 mg/dL</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-b28ef33b-0480-4bde-a5df-94988813110b\"><span title=\"Codes:{http://snomed.info/sct 865587343}\">865587343</span></a></td><td>23 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&lt;25 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span> for <span title=\"Codes:\">≥180 mg/dL, &lt;250 mg/dL</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-449a728d-dfb4-422d-94aa-1a2d43849ee5\"><span title=\"Codes:{http://snomed.info/sct 438565545}\">438565545</span></a></td><td>47 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&gt;25 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span> for <span title=\"Codes:\">≥70 mg/dL, &lt;180 mg/dL</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-a6665182-e11a-40a9-ae83-9b093a353f16\"><span title=\"Codes:{http://snomed.info/sct 278399267}\">278399267</span></a></td><td>4 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&lt;5 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span> for <span title=\"Codes:\">≥54 mg/dL, &lt;70 mg/dL</span></td><td>Final</td></tr><tr><td><a href=\"Bundle-uc53-bundle.html#urn-uuid-454a29d0-0893-458a-b2e5-25452b89e29a\"><span title=\"Codes:{http://snomed.info/sct 364527445}\">364527445</span></a></td><td>6 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>&lt;2 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span> for <span title=\"Codes:\">&lt; 54 mg/dL</span></td><td>Final</td></tr></table></div>"
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
      "result" : [{
        "reference" : "urn:uuid:c611b58d-27bb-49e2-b3ec-bd59e986f5f3"
      },
      {
        "reference" : "urn:uuid:397dffb4-a88a-47d0-b10d-beffcbf6157d"
      },
      {
        "reference" : "urn:uuid:6756477d-b57a-4611-b048-374d46f52908"
      },
      {
        "reference" : "urn:uuid:b44fe5d5-f57b-4424-b628-d2baeb447738"
      },
      {
        "reference" : "urn:uuid:b28ef33b-0480-4bde-a5df-94988813110b"
      },
      {
        "reference" : "urn:uuid:449a728d-dfb4-422d-94aa-1a2d43849ee5"
      },
      {
        "reference" : "urn:uuid:a6665182-e11a-40a9-ae83-9b093a353f16"
      },
      {
        "reference" : "urn:uuid:454a29d0-0893-458a-b2e5-25452b89e29a"
      }],
      "presentedForm" : [{
        "contentType" : "application/pdf",
        "data" : "JVBERi0xLjANCjEgMCBvYmo8PC9QYWdlcyAyIDAgUj4+ZW5kb2JqIDIgMCBvYmo8PC9LaWRzWzMgMCBSXS9Db3VudCAxPj5lbmRvYmogMyAwIG9iajw8L01lZGlhQm94WzAgMCAzIDNdPj5lbmRvYmoNCnRyYWlsZXI8PC9Sb290IDEgMCBSPj4="
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:c611b58d-27bb-49e2-b3ec-bd59e986f5f3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "c611b58d-27bb-49e2-b3ec-bd59e986f5f3",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_c611b58d-27bb-49e2-b3ec-bd59e986f5f3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation c611b58d-27bb-49e2-b3ec-bd59e986f5f3</b></p><a name=\"c611b58d-27bb-49e2-b3ec-bd59e986f5f3\"> </a><a name=\"hcc611b58d-27bb-49e2-b3ec-bd59e986f5f3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/c611b58d-27bb-49e2-b3ec-bd59e986f5f3</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 778232399}\">778232399</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 6 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>34 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td></tr></table></div>"
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
        "value" : "c611b58d-27bb-49e2-b3ec-bd59e986f5f3"
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
          "code" : "778232399"
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
        "value" : 6,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "high" : {
          "value" : 34,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:397dffb4-a88a-47d0-b10d-beffcbf6157d",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "397dffb4-a88a-47d0-b10d-beffcbf6157d",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_397dffb4-a88a-47d0-b10d-beffcbf6157d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 397dffb4-a88a-47d0-b10d-beffcbf6157d</b></p><a name=\"397dffb4-a88a-47d0-b10d-beffcbf6157d\"> </a><a name=\"hc397dffb4-a88a-47d0-b10d-beffcbf6157d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/397dffb4-a88a-47d0-b10d-beffcbf6157d</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 757492266}\">757492266</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 14 days<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  coded = 'd')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td></tr><tr><td style=\"display: none\">*</td><td>14 days<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  coded = 'd')</span></td></tr></table></div>"
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
        "value" : "397dffb4-a88a-47d0-b10d-beffcbf6157d"
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
          "code" : "757492266"
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
        "value" : 14,
        "unit" : "days",
        "system" : "http://unitsofmeasure.org",
        "code" : "d"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "low" : {
          "value" : 14,
          "unit" : "days",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:6756477d-b57a-4611-b048-374d46f52908",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "6756477d-b57a-4611-b048-374d46f52908",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_6756477d-b57a-4611-b048-374d46f52908\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 6756477d-b57a-4611-b048-374d46f52908</b></p><a name=\"6756477d-b57a-4611-b048-374d46f52908\"> </a><a name=\"hc6756477d-b57a-4611-b048-374d46f52908\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/6756477d-b57a-4611-b048-374d46f52908</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 242282937}\">242282937</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 96 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td></tr><tr><td style=\"display: none\">*</td><td>70 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td></tr></table></div>"
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
        "value" : "6756477d-b57a-4611-b048-374d46f52908"
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
          "code" : "242282937"
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
        "value" : 96,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "low" : {
          "value" : 70,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b44fe5d5-f57b-4424-b628-d2baeb447738",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "b44fe5d5-f57b-4424-b628-d2baeb447738",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_b44fe5d5-f57b-4424-b628-d2baeb447738\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation b44fe5d5-f57b-4424-b628-d2baeb447738</b></p><a name=\"b44fe5d5-f57b-4424-b628-d2baeb447738\"> </a><a name=\"hcb44fe5d5-f57b-4424-b628-d2baeb447738\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/b44fe5d5-f57b-4424-b628-d2baeb447738</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 124011008}\">124011008</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 20 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>AppliesTo</b></td></tr><tr><td style=\"display: none\">*</td><td>5 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td><span title=\"Codes:\">≥ 250 mg/dL</span></td></tr></table></div>"
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
        "value" : "b44fe5d5-f57b-4424-b628-d2baeb447738"
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
          "code" : "124011008"
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
        "value" : 20,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "high" : {
          "value" : 5,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "appliesTo" : [{
          "text" : "≥ 250 mg/dL"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b28ef33b-0480-4bde-a5df-94988813110b",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "b28ef33b-0480-4bde-a5df-94988813110b",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_b28ef33b-0480-4bde-a5df-94988813110b\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation b28ef33b-0480-4bde-a5df-94988813110b</b></p><a name=\"b28ef33b-0480-4bde-a5df-94988813110b\"> </a><a name=\"hcb28ef33b-0480-4bde-a5df-94988813110b\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/b28ef33b-0480-4bde-a5df-94988813110b</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 865587343}\">865587343</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 23 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>AppliesTo</b></td></tr><tr><td style=\"display: none\">*</td><td>25 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td><span title=\"Codes:\">≥180 mg/dL, &lt;250 mg/dL</span></td></tr></table></div>"
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
  },
  {
    "fullUrl" : "urn:uuid:449a728d-dfb4-422d-94aa-1a2d43849ee5",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "449a728d-dfb4-422d-94aa-1a2d43849ee5",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_449a728d-dfb4-422d-94aa-1a2d43849ee5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 449a728d-dfb4-422d-94aa-1a2d43849ee5</b></p><a name=\"449a728d-dfb4-422d-94aa-1a2d43849ee5\"> </a><a name=\"hc449a728d-dfb4-422d-94aa-1a2d43849ee5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/449a728d-dfb4-422d-94aa-1a2d43849ee5</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 438565545}\">438565545</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 47 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>AppliesTo</b></td></tr><tr><td style=\"display: none\">*</td><td>25 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td><span title=\"Codes:\">≥70 mg/dL, &lt;180 mg/dL</span></td></tr></table></div>"
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
        "value" : "449a728d-dfb4-422d-94aa-1a2d43849ee5"
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
          "code" : "438565545"
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
        "value" : 47,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "low" : {
          "value" : 25,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "appliesTo" : [{
          "text" : "≥70 mg/dL, <180 mg/dL"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:a6665182-e11a-40a9-ae83-9b093a353f16",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "a6665182-e11a-40a9-ae83-9b093a353f16",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_a6665182-e11a-40a9-ae83-9b093a353f16\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation a6665182-e11a-40a9-ae83-9b093a353f16</b></p><a name=\"a6665182-e11a-40a9-ae83-9b093a353f16\"> </a><a name=\"hca6665182-e11a-40a9-ae83-9b093a353f16\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/a6665182-e11a-40a9-ae83-9b093a353f16</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 278399267}\">278399267</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 4 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>AppliesTo</b></td></tr><tr><td style=\"display: none\">*</td><td>5 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td><span title=\"Codes:\">≥54 mg/dL, &lt;70 mg/dL</span></td></tr></table></div>"
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
        "value" : "a6665182-e11a-40a9-ae83-9b093a353f16"
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
          "code" : "278399267"
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
        "value" : 4,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "high" : {
          "value" : 5,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "appliesTo" : [{
          "text" : "≥54 mg/dL, <70 mg/dL"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:454a29d0-0893-458a-b2e5-25452b89e29a",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "454a29d0-0893-458a-b2e5-25452b89e29a",
      "meta" : {
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-observation-diabetes"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_454a29d0-0893-458a-b2e5-25452b89e29a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 454a29d0-0893-458a-b2e5-25452b89e29a</b></p><a name=\"454a29d0-0893-458a-b2e5-25452b89e29a\"> </a><a name=\"hc454a29d0-0893-458a-b2e5-25452b89e29a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-be-observation-diabetes.html\">BeObservationDiabetes</a></p></div><p><b>BeExtRecorder</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>BeExtRecordedDate</b>: 2024-11-25</p><p><b>identifier</b>: <a href=\"NamingSystem-be-ns-observation-diabetes.html\">BeNSObservationDiabetes</a>/454a29d0-0893-458a-b2e5-25452b89e29a</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 439926003}\">439926003</span>, <span title=\"Codes:{http://snomed.info/sct 258090004}\">258090004</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 364527445}\">364527445</span></p><p><b>subject</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-ssin.html\" title=\"NISS/INSZ\">BeSSINNamingSystem</a>/80051207915</p><p><b>effective</b>: 2024-11-11 --&gt; 2024-11-24</p><p><b>performer</b>: Identifier: <a href=\"https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/NamingSystem-be-nihdi.html\" title=\"RIZIV/INAMI\">BeNIHDINamingSystem</a>/0403044007</p><p><b>value</b>: 6 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>device</b>: <a href=\"Bundle-uc53-bundle.html#urn-uuid-ce11c616-6625-4966-8a16-012ee8ff1d8e\">Device: type = 701010000576</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>AppliesTo</b></td></tr><tr><td style=\"display: none\">*</td><td>2 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td><span title=\"Codes:\">&lt; 54 mg/dL</span></td></tr></table></div>"
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
        "value" : "454a29d0-0893-458a-b2e5-25452b89e29a"
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
          "code" : "364527445"
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
        "value" : 6,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "device" : {
        "reference" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e"
      },
      "referenceRange" : [{
        "high" : {
          "value" : 2,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "appliesTo" : [{
          "text" : "< 54 mg/dL"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:ce11c616-6625-4966-8a16-012ee8ff1d8e",
    "resource" : {
      "resourceType" : "Device",
      "id" : "device",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_device\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device device</b></p><a name=\"device\"> </a><a name=\"hcdevice\"> </a><p><b>type</b>: <span title=\"Codes:{https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type 701010000576}\">701010000576</span></p></div>"
      },
      "type" : {
        "coding" : [{
          "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/NamingSystem/be-ns-diabetes-device-type",
          "code" : "701010000576"
        }]
      }
    }
  }]
}

```
