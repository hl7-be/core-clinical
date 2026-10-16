# BelRAI Score Code System - Clinical Core v1.2.0

## CodeSystem: BelRAI Score Code System 

 
Codes identifying each BelRAI scoring scale/screener, used as Observation.code. 

This Code system is referenced in the definition of the following value sets:

* [BeVSBelraiScore](ValueSet-be-vs-belrai-score.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "be-cs-belrai-score",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-belrai-score",
  "version" : "1.2.0",
  "name" : "BeCSBelraiScore",
  "title" : "BelRAI Score Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-16T15:39:29+00:00",
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
  "description" : "Codes identifying each BelRAI scoring scale/screener, used as Observation.code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 98,
  "concept" : [{
    "code" : "aHSDELIRIUM",
    "display" : "Delirium Screener (aHSDELIRIUM)"
  },
  {
    "code" : "aHSDEMENTIA",
    "display" : "Dementia Screener (aHSDEMENTIA)"
  },
  {
    "code" : "aHSDEPRESSION",
    "display" : "Depression Screener (aHSDEPRESSION)"
  },
  {
    "code" : "aHSNUTRITION",
    "display" : "Nutrition Screener (aHSNUTRITION)"
  },
  {
    "code" : "aMAPLE",
    "display" : "Method for Assigning Priority Levels (aMAPLe)"
  },
  {
    "code" : "cABUSE",
    "display" : "Mishandeling/Verwaarlozing"
  },
  {
    "code" : "cACTIV",
    "display" : "Activiteiten"
  },
  {
    "code" : "cADD",
    "display" : "Tabak- en alcoholgebruik"
  },
  {
    "code" : "cADL",
    "display" : "Activiteiten van het dagelijks leven (ADL)"
  },
  {
    "code" : "cBEHAV",
    "display" : "Gedrag"
  },
  {
    "code" : "cBOWEL",
    "display" : "Darmproblemen"
  },
  {
    "code" : "cBRITSU",
    "display" : "Mantelzorg"
  },
  {
    "code" : "cCARDIO",
    "display" : "Hart en ademhaling"
  },
  {
    "code" : "cCOGNIT",
    "display" : "Cognitieverlies"
  },
  {
    "code" : "cCOMMUN",
    "display" : "Communicatie"
  },
  {
    "code" : "cDEHYD",
    "display" : "Dehydratatie"
  },
  {
    "code" : "cDELIR",
    "display" : "Delirium"
  },
  {
    "code" : "cDENTISTREFER",
    "display" : "Doorverwijzing naar de tandarts"
  },
  {
    "code" : "cDRUG",
    "display" : "Juist en verantwoord medicatiegebruik"
  },
  {
    "code" : "cENVIR",
    "display" : "Thuisomgeving"
  },
  {
    "code" : "cFALLS",
    "display" : "Valincidenten"
  },
  {
    "code" : "cFEEDTB",
    "display" : "Sondevoeding"
  },
  {
    "code" : "cHSBEHAV",
    "display" : "Gedrag - Ziekenhuis"
  },
  {
    "code" : "cHSCOGNIT",
    "display" : "Cognitieverlies - Ziekenhuis"
  },
  {
    "code" : "cHSCOMMUN",
    "display" : "Communicatie - Ziekenhuis"
  },
  {
    "code" : "cHSDEPRESS",
    "display" : "Depressie - Ziekenhuis"
  },
  {
    "code" : "cHSFALLS",
    "display" : "Valincidenten - Ziekenhuis"
  },
  {
    "code" : "cHSINSTITUTION",
    "display" : "Kans op opname in een voorziening - Ziekenhuis"
  },
  {
    "code" : "cHSPAIN",
    "display" : "Pijn - Ziekenhuis"
  },
  {
    "code" : "cHSREADMISSION",
    "display" : "Kans op heropname"
  },
  {
    "code" : "cHSUNDERNUTRITION",
    "display" : "Ondervoeding - Ziekenhuis"
  },
  {
    "code" : "cIADL",
    "display" : "Instrumentele activiteiten van het dagelijks leven (IADL)"
  },
  {
    "code" : "cMHCRIM",
    "display" : "Criminele activiteiten"
  },
  {
    "code" : "cMHCTRLINT",
    "display" : "Vrijheidsbeperkende maatregelen"
  },
  {
    "code" : "cMHEDEMP",
    "display" : "Opleiding en werk"
  },
  {
    "code" : "cMHEXER",
    "display" : "Beweging"
  },
  {
    "code" : "cMHFINAN",
    "display" : "Persoonlijke financiën"
  },
  {
    "code" : "cMHHARMOTH",
    "display" : "Schade aan anderen"
  },
  {
    "code" : "cMHINFSUPP",
    "display" : "Mantelzorg - Mentale gezondheid"
  },
  {
    "code" : "cMHIPCON",
    "display" : "Intermenselijke conflicten"
  },
  {
    "code" : "cMHMEDMGT",
    "display" : "Geneesmiddelenbeheer en therapietrouw"
  },
  {
    "code" : "cMHPAIN",
    "display" : "Pijn - Mentale gezondheid"
  },
  {
    "code" : "cMHREHOSP",
    "display" : "Heropname"
  },
  {
    "code" : "cMHSELFCR",
    "display" : "Zelfzorg"
  },
  {
    "code" : "cMHSELFHA",
    "display" : "Zelfmoordgedrag en opzettelijke zelfverwonding"
  },
  {
    "code" : "cMHSLEEP",
    "display" : "Slaapstoornissen - Mentale gezondheid"
  },
  {
    "code" : "cMHSMOKE",
    "display" : "Roken"
  },
  {
    "code" : "cMHSOCREL",
    "display" : "Sociale relaties - Mentale gezondheid"
  },
  {
    "code" : "cMHSSDIS",
    "display" : "Ondersteuningskader bij ontslag"
  },
  {
    "code" : "cMHSUBUSE",
    "display" : "Middelengebruik"
  },
  {
    "code" : "cMHTRAUMA",
    "display" : "Traumatische levensgebeurtenissen"
  },
  {
    "code" : "cMHWTMGT",
    "display" : "Gewichtsmanagement"
  },
  {
    "code" : "cMOOD",
    "display" : "Stemming"
  },
  {
    "code" : "cNUTR",
    "display" : "Ondervoeding"
  },
  {
    "code" : "cORALHYG",
    "display" : "Mondhygiëne"
  },
  {
    "code" : "cPACTIV",
    "display" : "Bevordering van de lichaamsbeweging"
  },
  {
    "code" : "cPAIN",
    "display" : "Pijn"
  },
  {
    "code" : "cPCDYS",
    "display" : "Dyspneu"
  },
  {
    "code" : "cPCFATIG",
    "display" : "Vermoeidheid"
  },
  {
    "code" : "cPCMOOD",
    "display" : "Stemming-Palliative Care"
  },
  {
    "code" : "cPCNUTR",
    "display" : "Voeding - Palliatieve zorg"
  },
  {
    "code" : "cPCPAIN",
    "display" : "Pijn - Palliatieve zorg"
  },
  {
    "code" : "cPCSLEEP",
    "display" : "Slaapstoornis - Palliatieve zorg"
  },
  {
    "code" : "cPULCER",
    "display" : "Decubitus"
  },
  {
    "code" : "cRESTR",
    "display" : "Fysieke fixatie"
  },
  {
    "code" : "cRISK",
    "display" : "Kans op opname in een voorziening"
  },
  {
    "code" : "cSOCFUNC",
    "display" : "Sociale omgang"
  },
  {
    "code" : "cURIN",
    "display" : "Urine-incontinentie"
  },
  {
    "code" : "cpHSADL",
    "display" : "Activiteiten van het dagelijks leven (ADL)- Preventie"
  },
  {
    "code" : "cpHSDELIRIUM",
    "display" : "Delirium - Preventie"
  },
  {
    "code" : "cpHSPULCER",
    "display" : "Decubitus - Ziekenhuis"
  },
  {
    "code" : "cpcPUIMP",
    "display" : "Decubitus - Palliatieve zorg"
  },
  {
    "code" : "ctHSADL",
    "display" : "Activiteiten van het dagelijks leven (ADL)- Behandeling"
  },
  {
    "code" : "ctHSDELIRIUM",
    "display" : "Delirium - Behandeling"
  },
  {
    "code" : "ctHSPULCER",
    "display" : "Decubitus - Behandeling - Ziekenhuis"
  },
  {
    "code" : "rHSADL",
    "display" : "Risk of Adverse Outcomes in the Form of ADL Decline in Hospital (rHSADL)"
  },
  {
    "code" : "rHSDELIRIUM",
    "display" : "Risk of Delirium in Hospital (rHSDELIRIUM)"
  },
  {
    "code" : "rHSFALLS",
    "display" : "Falls Risk in Hospital (rHSFALLS)"
  },
  {
    "code" : "rHSPULCER",
    "display" : "Pressure Ulcer Risk Scale in Hospital (rHSPULCER)"
  },
  {
    "code" : "rHSREADMISSION",
    "display" : "Risk of Readmission in Hospital (rHSREADMISSION)"
  },
  {
    "code" : "sABS",
    "display" : "Aggressive Behaviour Scale (sABS)"
  },
  {
    "code" : "sADLH",
    "display" : "ADL Hierarchy Scale (sADLH)"
  },
  {
    "code" : "sBMI",
    "display" : "Body Mass Index (sBMI)"
  },
  {
    "code" : "sCAGE",
    "display" : "Addictions and Substance Use Scale (sCAGE)"
  },
  {
    "code" : "sCHESS",
    "display" : "Changes in Health, End-stage Disease and Symptoms and Signs Scale (sCHESS)"
  },
  {
    "code" : "sCOMM",
    "display" : "Communication Scale (sCOMM)"
  },
  {
    "code" : "sCPS",
    "display" : "Cognitive Performance Scale (sCPS)"
  },
  {
    "code" : "sCPS2",
    "display" : "Cognitive Performance Scale 2 (sCPS2)"
  },
  {
    "code" : "sDRS",
    "display" : "Depression Rating Scale (sDRS)"
  },
  {
    "code" : "sDbSI",
    "display" : "Deafblind Severity Index (sDbSI)"
  },
  {
    "code" : "sFRAILTY",
    "display" : "Frailty Scale (sFrailty)"
  },
  {
    "code" : "sHSADLH",
    "display" : "ADL Hierarchy Scale – Hospital (sHSADLH)"
  },
  {
    "code" : "sHSPAIN",
    "display" : "Pain Scale - Hospital (sHSPAIN)"
  },
  {
    "code" : "sHSPURS",
    "display" : "Pressure Ulcer Risk Scale - Hospital (sHSPURS)"
  },
  {
    "code" : "sIADLCH",
    "display" : "IADL Capacity Hierarchy Scale (sIADLCH)"
  },
  {
    "code" : "sPAIN",
    "display" : "Pain Scale (sPAIN)"
  },
  {
    "code" : "sPURS",
    "display" : "Pressure Ulcer Risk Scale (sPURS)"
  },
  {
    "code" : "sSRMOOD",
    "display" : "Self-reported Mood Scale"
  }]
}

```
