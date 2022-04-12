Instance: be-vs-score
InstanceOf: ValueSet
Usage: #definition
* url = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ValueSet/be-vs-score"
* version = "1.0.0"
* name = "BeVSScore"
* title = "Score Value Set"
* status = #active
* date = "2020-10-01T11:01:09+00:00"
* publisher = "eHealth Platform"
* contact[0].name = "eHealth Platform"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "https://www.ehealth.fgov.be"
* contact[+].name = "Message structure"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* description = "Codes as defined by the NIHDI. Dutch translations are expected for a next release."
* jurisdiction.coding[0] = http://unstats.un.org/unsd/methods/m49/m49.htm#056
* jurisdiction.coding[+] = urn:iso:std:iso:3166#BE
* compose.include[0].system = "http://snomed.info/sct"
* compose.include[=].concept[0].code = #763117005
* compose.include[=].concept[=].display = "FINDRISC (Finnish Diabetes Risk Score) score"
* compose.include[=].concept[=].designation[0].use = http://snomed.info/sct#900000000000003001 "Fully specified name"
* compose.include[=].concept[=].designation[=].value = "Finnish Diabetes Risk Score (observable entity)"
* compose.include[=].concept[=].designation[+].language = #en
* compose.include[=].concept[=].designation[=].value = "Finnish Diabetes Risk Score"
* compose.include[=].concept[=].designation[+].language = #fr-BE
* compose.include[=].concept[=].designation[=].value = "Finnish Diabetes Risk Score"
* compose.include[=].concept[+].code = #446661009
* compose.include[=].concept[=].display = "Visual Analogic Scale for pain assessment"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "(EVA) Echelle Visuelle Analogique"
* compose.include[=].concept[+].code = #273531005
* compose.include[=].concept[=].display = "Index of Independence in Activities of Daily Living"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "Grille d'évaluation de l'autonomie pour les activités basales de la vie quotidienne"
* compose.include[=].concept[+].code = #447316007
* compose.include[=].concept[=].display = "Mini-Mental State Examination"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "Examen mental de Folstein"
* compose.include[=].concept[+].code = #444297006
* compose.include[=].concept[=].display = "Malnutrition Universal Screening"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "Malnutrition Universal Screening"
* compose.include[=].concept[+].code = #443133008
* compose.include[=].concept[=].display = "Norton Pressure Sore Risk-Assessment Scale Scoring System"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "évaluation du risque d'escarre"
* compose.include[=].concept[+].code = #7121000122100
* compose.include[=].concept[=].display = "Pain Assessment in Advanced Dementia Scale"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "Hétéro-évaluation de la douleur chez la personne âgée non communicante"
* compose.include[=].concept[+].code = #273849003
* compose.include[=].concept[=].display = "Subjective Global Assessment"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "Subjective Global Assessment"
* compose.include[=].concept[+].code = #450738001
* compose.include[=].concept[=].display = "Timed Chair Stand"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "évaluation des risques de chutes et la force musculaire des membres inférieurs"
* compose.include[=].concept[+].code = #444680009
* compose.include[=].concept[=].display = "Timed Up&Go : évalue le risque de chute chez une personne"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "Timed Up&Go : évalue le risque de chute chez une personne"
* compose.include[=].concept[+].code = #278897004
* compose.include[=].concept[=].display = "Waterlow pressure ulcer risk assessment"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "(WATERLOW) Echelle d'évaluation du risque d'escarre"
* compose.include[=].concept[+].code = #763259004
* compose.include[=].concept[=].display = "Disease Activity Score"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "(DAS) Score d'activité de la polyarthrite rhumatoïde"
* compose.include[=].concept[+].code = #273364009
* compose.include[=].concept[=].display = "Clinical Disease Activity Index"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "(CDAI) Indice d'activité de la polyarthrite rhumatoïde"
* compose.include[=].concept[+].code = #443318007
* compose.include[=].concept[=].display = "Tinetti balance and gait scale"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "évalue le risque de chute chez une personne âgée"
* compose.include[=].concept[+].code = #719124004
* compose.include[=].concept[=].display = "Arthritis Impact Measurement Scales 2 (AIMS2)"
* compose.include[=].concept[=].designation.language = #fr-BE
* compose.include[=].concept[=].designation.value = "(EMIR) Echelle de Mesure de l'Impact de la Polyarthrite Rhumatoïde"
* compose.include[+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score"