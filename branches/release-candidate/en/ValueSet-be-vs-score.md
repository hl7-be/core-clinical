# Score Value Set - Clinical Core v1.2.0

## ValueSet: Score Value Set 

 
Codes as defined by the NIHDI. Dutch translations are expected for a next release. 

 **References** 

* [BeScoreResult](StructureDefinition-be-scoreresult.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-score",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-score",
  "version" : "1.2.0",
  "name" : "BeVSScore",
  "title" : "Score Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-24T05:38:27+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be"
    },
    {
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be"
    }]
  },
  {
    "name" : "Message-Structure",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "Codes as defined by the NIHDI. Dutch translations are expected for a next release.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "763117005",
        "display" : "FINDRISC (Finnish Diabetes Risk Score) score",
        "designation" : [{
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
        }]
      },
      {
        "code" : "446661009",
        "display" : "Visual analog scale score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "(EVA) Echelle Visuelle Analogique"
        }]
      },
      {
        "code" : "273531005",
        "display" : "Index of Independence in Activities of Daily Living",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Grille d'évaluation de l'autonomie pour les activités basales de la vie quotidienne"
        }]
      },
      {
        "code" : "447316007",
        "display" : "Mini-mental state examination score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Examen mental de Folstein"
        }]
      },
      {
        "code" : "444297006",
        "display" : "Malnutrition universal screening tool score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Malnutrition Universal Screening"
        }]
      },
      {
        "code" : "443133008",
        "display" : "Norton pressure sore risk score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "évaluation du risque d'escarre"
        }]
      },
      {
        "code" : "7121000122100",
        "display" : "Pain Assessment in Advanced Dementia Scale",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Hétéro-évaluation de la douleur chez la personne âgée non communicante"
        }]
      },
      {
        "code" : "273849003",
        "display" : "Subjective Global Assessment",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Subjective Global Assessment"
        }]
      },
      {
        "code" : "450738001",
        "display" : "Thirty second chair stand test score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "évaluation des risques de chutes et la force musculaire des membres inférieurs"
        }]
      },
      {
        "code" : "444680009",
        "display" : "Timed up and go mobility test score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "Timed Up&Go : évalue le risque de chute chez une personne"
        }]
      },
      {
        "code" : "278897004",
        "display" : "Waterlow pressure sore risk score",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "(WATERLOW) Echelle d'évaluation du risque d'escarre"
        }]
      },
      {
        "code" : "763259004",
        "display" : "Disease Activity Score",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "(DAS) Score d'activité de la polyarthrite rhumatoïde"
        }]
      },
      {
        "code" : "273364009",
        "display" : "Crohn's disease activity index",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "(CDAI) Indice d'activité de la polyarthrite rhumatoïde"
        }]
      },
      {
        "code" : "443318007",
        "display" : "Tinetti balance and gait scale",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "évalue le risque de chute chez une personne âgée"
        }]
      },
      {
        "code" : "719124004",
        "display" : "Arthritis Impact Measurement Scales 2 score (observable entity)",
        "designation" : [{
          "language" : "fr-BE",
          "value" : "(EMIR) Echelle de Mesure de l'Impact de la Polyarthrite Rhumatoïde"
        }]
      }]
    },
    {
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score"
    }]
  }
}

```
