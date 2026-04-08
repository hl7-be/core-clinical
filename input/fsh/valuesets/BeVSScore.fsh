ValueSet: BeVSScore
Id: be-vs-score
Title: "Score Value Set"
Description: "Codes as defined by the NIHDI. Dutch translations are expected for a next release."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-score"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^status = #active
* ^experimental = false
//* ^caseSensitive = false
* ^compose.include[0].system = $sct
* ^compose.include[=].concept[0].code = #763117005
* ^compose.include[=].concept[=].display = "FINDRISC (Finnish Diabetes Risk Score) score"
* ^compose.include[=].concept[=].designation[0].use = $sct#900000000000003001 "Fully specified name"
* ^compose.include[=].concept[=].designation[=].value = "Finnish Diabetes Risk Score (observable entity)"
* ^compose.include[=].concept[=].designation[+].language = #en
* ^compose.include[=].concept[=].designation[=].value = "Finnish Diabetes Risk Score"
* ^compose.include[=].concept[=].designation[+].language = #fr-BE
* ^compose.include[=].concept[=].designation[=].value = "Finnish Diabetes Risk Score"
* ^compose.include[=].concept[+].code = #446661009
* ^compose.include[=].concept[=].display = "Visual analog scale score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "(EVA) Echelle Visuelle Analogique"
* ^compose.include[=].concept[+].code = #273531005
* ^compose.include[=].concept[=].display = "Index of Independence in Activities of Daily Living"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "Grille d'évaluation de l'autonomie pour les activités basales de la vie quotidienne"
* ^compose.include[=].concept[+].code = #447316007
* ^compose.include[=].concept[=].display = "Mini-mental state examination score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "Examen mental de Folstein"
* ^compose.include[=].concept[+].code = #444297006
* ^compose.include[=].concept[=].display = "Malnutrition universal screening tool score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "Malnutrition Universal Screening"
* ^compose.include[=].concept[+].code = #443133008
* ^compose.include[=].concept[=].display = "Norton pressure sore risk score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "évaluation du risque d'escarre"
* ^compose.include[=].concept[+].code = #7121000122100
* ^compose.include[=].concept[=].display = "Pain Assessment in Advanced Dementia Scale"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "Hétéro-évaluation de la douleur chez la personne âgée non communicante"
* ^compose.include[=].concept[+].code = #273849003
* ^compose.include[=].concept[=].display = "Subjective Global Assessment"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "Subjective Global Assessment"
* ^compose.include[=].concept[+].code = #450738001
* ^compose.include[=].concept[=].display = "Thirty second chair stand test score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "évaluation des risques de chutes et la force musculaire des membres inférieurs"
* ^compose.include[=].concept[+].code = #444680009
* ^compose.include[=].concept[=].display = "Timed up and go mobility test score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "Timed Up&Go : évalue le risque de chute chez une personne"
* ^compose.include[=].concept[+].code = #278897004
* ^compose.include[=].concept[=].display = "Waterlow pressure sore risk score"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "(WATERLOW) Echelle d'évaluation du risque d'escarre"
* ^compose.include[=].concept[+].code = #763259004
* ^compose.include[=].concept[=].display = "Disease Activity Score"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "(DAS) Score d'activité de la polyarthrite rhumatoïde"
* ^compose.include[=].concept[+].code = #273364009
* ^compose.include[=].concept[=].display = "Crohn's disease activity index"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "(CDAI) Indice d'activité de la polyarthrite rhumatoïde"
* ^compose.include[=].concept[+].code = #443318007
* ^compose.include[=].concept[=].display = "Tinetti balance and gait scale"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "évalue le risque de chute chez une personne âgée"
* ^compose.include[=].concept[+].code = #719124004
* ^compose.include[=].concept[=].display = "Arthritis Impact Measurement Scales 2 score (observable entity)"
* ^compose.include[=].concept[=].designation.language = #fr-BE
* ^compose.include[=].concept[=].designation.value = "(EMIR) Echelle de Mesure de l'Impact de la Polyarthrite Rhumatoïde"
* ^compose.include[+].system = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-score"