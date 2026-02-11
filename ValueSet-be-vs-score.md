# Score Value Set - HL7 FHIR Implementation Guide: Transversal Clinical Core v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Score Value Set**

## ValueSet: Score Value Set 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-score | *Version*:1.0.1 | |
| Active as of 2020-10-01 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:BeVSScore |

 
Codes as defined by the NIHDI. Dutch translations are expected for a next release. 

 **References** 

* [BeScoreResult](StructureDefinition-be-scoreresult.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-score",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-score",
  "version" : "1.0.1",
  "name" : "BeVSScore",
  "title" : "Score Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2020-10-01T11:01:09+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [
    {
      "name" : "eHealth Platform",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be"
        },
        {
          "system" : "email",
          "value" : "message-structure@www.ehealth.fgov.be"
        }
      ]
    },
    {
      "name" : "Message-Structure",
      "telecom" : [
        {
          "system" : "email",
          "value" : "message-structure@www.ehealth.fgov.be",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Codes as defined by the NIHDI. Dutch translations are expected for a next release.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "763117005",
            "display" : "FINDRISC (Finnish Diabetes Risk Score) score",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "900000000000003001",
                  "display" : "Fully specified name"
                },
                "value" : "Finnish Diabetes Risk Score (observable entity)"
              },
              {
                "language" : "en",
                "value" : "Finnish Diabetes Risk Score"
              },
              {
                "language" : "fr-BE",
                "value" : "Finnish Diabetes Risk Score"
              }
            ]
          },
          {
            "code" : "446661009",
            "display" : "Visual Analogic Scale for pain assessment",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "(EVA) Echelle Visuelle Analogique"
              }
            ]
          },
          {
            "code" : "273531005",
            "display" : "Index of Independence in Activities of Daily Living",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "Grille d'évaluation de l'autonomie pour les activités basales de la vie quotidienne"
              }
            ]
          },
          {
            "code" : "447316007",
            "display" : "Mini-Mental State Examination",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "Examen mental de Folstein"
              }
            ]
          },
          {
            "code" : "444297006",
            "display" : "Malnutrition Universal Screening",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "Malnutrition Universal Screening"
              }
            ]
          },
          {
            "code" : "443133008",
            "display" : "Norton Pressure Sore Risk-Assessment Scale Scoring System",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "évaluation du risque d'escarre"
              }
            ]
          },
          {
            "code" : "7121000122100",
            "display" : "Pain Assessment in Advanced Dementia Scale",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "Hétéro-évaluation de la douleur chez la personne âgée non communicante"
              }
            ]
          },
          {
            "code" : "273849003",
            "display" : "Subjective Global Assessment",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "Subjective Global Assessment"
              }
            ]
          },
          {
            "code" : "450738001",
            "display" : "Timed Chair Stand",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "évaluation des risques de chutes et la force musculaire des membres inférieurs"
              }
            ]
          },
          {
            "code" : "444680009",
            "display" : "Timed Up&Go : évalue le risque de chute chez une personne",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "Timed Up&Go : évalue le risque de chute chez une personne"
              }
            ]
          },
          {
            "code" : "278897004",
            "display" : "Waterlow pressure ulcer risk assessment",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "(WATERLOW) Echelle d'évaluation du risque d'escarre"
              }
            ]
          },
          {
            "code" : "763259004",
            "display" : "Disease Activity Score",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "(DAS) Score d'activité de la polyarthrite rhumatoïde"
              }
            ]
          },
          {
            "code" : "273364009",
            "display" : "Clinical Disease Activity Index",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "(CDAI) Indice d'activité de la polyarthrite rhumatoïde"
              }
            ]
          },
          {
            "code" : "443318007",
            "display" : "Tinetti balance and gait scale",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "évalue le risque de chute chez une personne âgée"
              }
            ]
          },
          {
            "code" : "719124004",
            "display" : "Arthritis Impact Measurement Scales 2 (AIMS2)",
            "designation" : [
              {
                "language" : "fr-BE",
                "value" : "(EMIR) Echelle de Mesure de l'Impact de la Polyarthrite Rhumatoïde"
              }
            ]
          }
        ]
      },
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score"
      }
    ]
  }
}

```
