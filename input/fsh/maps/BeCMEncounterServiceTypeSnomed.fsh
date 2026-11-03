// Generated from VS_Be_ServiceType_Voorstel.xlsx (CareSet Encounter V0.7, #146). Informative only.
Instance: be-cm-encounter-servicetype-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Encounter Service Type to SNOMED CT"
Description: "Informative mapping of the Encounter Service Type codes (BeCSEncounterServiceType) to SNOMED CT, as given in the proposal VS_Be_ServiceType_Voorstel referenced by CareSet Encounter V0.7."
* url = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/ConceptMap/be-cm-encounter-servicetype-snomed"
* name = "BeCMEncounterServiceTypeSnomed"
* status = #draft
* experimental = false
* sourceUri = "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-encounter-servicetype"
* group[+].source = "https://www.ehealth.fgov.be/standards/fhir/core-clinical/CodeSystem/be-cs-encounter-servicetype"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #general-practice
* group[=].element[=].target[+].code = #394814009
* group[=].element[=].target[=].display = "General practice (specialty)"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #occupational-medicine
* group[=].element[=].target[+].code = #394821009
* group[=].element[=].target[=].display = "Occupational medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #internal-medicine
* group[=].element[=].target[+].code = #419192003
* group[=].element[=].target[=].display = "Internal medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #cardiology
* group[=].element[=].target[+].code = #394579002
* group[=].element[=].target[=].display = "Cardiology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #endocrinology
* group[=].element[=].target[+].code = #394583002
* group[=].element[=].target[=].display = "Endocrinology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #gastroenterology
* group[=].element[=].target[+].code = #394584008
* group[=].element[=].target[=].display = "Gastroenterology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #hepatology
* group[=].element[=].target[+].code = #408472002
* group[=].element[=].target[=].display = "Hepatology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #nephrology
* group[=].element[=].target[+].code = #394589003
* group[=].element[=].target[=].display = "Nephrology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #rheumatology
* group[=].element[=].target[+].code = #394810000
* group[=].element[=].target[=].display = "Rheumatology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pulmonology
* group[=].element[=].target[+].code = #418112009
* group[=].element[=].target[=].display = "Pulmonary medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #infectious-disease
* group[=].element[=].target[+].code = #394807007
* group[=].element[=].target[=].display = "Infectious diseases"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #geriatrics
* group[=].element[=].target[+].code = #394811001
* group[=].element[=].target[=].display = "Geriatric medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #hematology
* group[=].element[=].target[+].code = #394803006
* group[=].element[=].target[=].display = "Clinical hematology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #oncology
* group[=].element[=].target[+].code = #394593009
* group[=].element[=].target[=].display = "Medical oncology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #immunology
* group[=].element[=].target[+].code = #408480009
* group[=].element[=].target[=].display = "Clinical immunology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #allergology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #palliative-care
* group[=].element[=].target[+].code = #394806003
* group[=].element[=].target[=].display = "Palliative medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #tropical-medicine
* group[=].element[=].target[+].code = #408448007
* group[=].element[=].target[=].display = "Tropical medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #sports-medicine
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #emergency-medicine
* group[=].element[=].target[+].code = #394576009
* group[=].element[=].target[=].display = "Surgical-Accident & emergency"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #intensive-care
* group[=].element[=].target[+].code = #408478003
* group[=].element[=].target[=].display = "Critical care medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #disaster-medicine
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #neurology
* group[=].element[=].target[+].code = #394591006
* group[=].element[=].target[=].display = "Neurology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #neurosurgery
* group[=].element[=].target[+].code = #394610002
* group[=].element[=].target[=].display = "Neurosurgery"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #neuropsychology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #sleep-medicine
* group[=].element[=].target[+].code = #408450004
* group[=].element[=].target[=].display = "Sleep studies"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #gynecology
* group[=].element[=].target[+].code = #394586005
* group[=].element[=].target[=].display = "Gynecology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #obstetrics
* group[=].element[=].target[+].code = #408470005
* group[=].element[=].target[=].display = "Obstetrics"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #reproductive-medicine
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #neonatology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatrics
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-cardiology
* group[=].element[=].target[+].code = #408459003
* group[=].element[=].target[=].display = "Pediatric cardiology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-endocrinology
* group[=].element[=].target[+].code = #419610006
* group[=].element[=].target[=].display = "Pediatric endocrinology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-gastroenterology
* group[=].element[=].target[+].code = #418058008
* group[=].element[=].target[=].display = "Pediatric gastroenterology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-hepatology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-hematology
* group[=].element[=].target[+].code = #418652005
* group[=].element[=].target[=].display = "Pediatric hematology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-immunology
* group[=].element[=].target[+].code = #418535003
* group[=].element[=].target[=].display = "Pediatric immunology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-allergy
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-infectious-disease
* group[=].element[=].target[+].code = #418862001
* group[=].element[=].target[=].display = "Pediatric infectious diseases"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-intensive-care
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-oncology
* group[=].element[=].target[+].code = #418002000
* group[=].element[=].target[=].display = "Pediatric oncology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-nephrology
* group[=].element[=].target[+].code = #419365004
* group[=].element[=].target[=].display = "Pediatric nephrology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-neurology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-pulmonology
* group[=].element[=].target[+].code = #419170002
* group[=].element[=].target[=].display = "Pediatric pulmonology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-rheumatology
* group[=].element[=].target[+].code = #419472004
* group[=].element[=].target[=].display = "Pediatric rheumatology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-sleep-medicine
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-rehabilitation
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #pediatric-surgery
* group[=].element[=].target[+].code = #394539006
* group[=].element[=].target[=].display = "Pediatric surgery"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #child-psychiatry
* group[=].element[=].target[+].code = #394588006
* group[=].element[=].target[=].display = "Pediatric (Child and adolescent) psychiatry"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #general-surgery
* group[=].element[=].target[+].code = #394609007
* group[=].element[=].target[=].display = "Surgery-general"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #cardiac-surgery
* group[=].element[=].target[+].code = #408466002
* group[=].element[=].target[=].display = "Surgery-Cardiac surgery"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #thoracic-surgery
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #vascular-surgery
* group[=].element[=].target[+].code = #408463005
* group[=].element[=].target[=].display = "Surgery-Vascular"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #orthopedic-surgery
* group[=].element[=].target[+].code = #394801008
* group[=].element[=].target[=].display = "Surgery-Trauma and orthopedics"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #trauma-surgery
* group[=].element[=].target[+].code = #394801008
* group[=].element[=].target[=].display = "Surgery-Trauma and orthopedics"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #plastic-surgery
* group[=].element[=].target[+].code = #394611003
* group[=].element[=].target[=].display = "Surgery-Plastic surgery"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #maxillofacial-surgery
* group[=].element[=].target[+].code = #408465003
* group[=].element[=].target[=].display = "Surgery-Dental-Oral and maxillofacial surgery"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #transplant-surgery
* group[=].element[=].target[+].code = #408477008
* group[=].element[=].target[=].display = "Surgery-Transplantation surgery"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #ophthalmology
* group[=].element[=].target[+].code = #394594003
* group[=].element[=].target[=].display = "Ophthalmology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #ent
* group[=].element[=].target[+].code = #418960008
* group[=].element[=].target[=].display = "Otolaryngology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #audiology
* group[=].element[=].target[+].code = #394578005
* group[=].element[=].target[=].display = "Audiological medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #anesthesiology
* group[=].element[=].target[+].code = #394577000
* group[=].element[=].target[=].display = "Anesthetics"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pain-medicine
* group[=].element[=].target[+].code = #394882004
* group[=].element[=].target[=].display = "Pain management"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #psychiatry
* group[=].element[=].target[+].code = #394587001
* group[=].element[=].target[=].display = "Psychiatry"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #geriatric-psychiatry
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #psychology
* group[=].element[=].target[+].code = #59944000
* group[=].element[=].target[=].display = "Psychologist"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #clinical-psychology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #psychotherapy
* group[=].element[=].target[+].code = #394913002
* group[=].element[=].target[=].display = "Psychotherapy (specialty)"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #sexology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #addiction-care
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #radiology
* group[=].element[=].target[+].code = #394914008
* group[=].element[=].target[=].display = "Radiology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #nuclear-medicine
* group[=].element[=].target[+].code = #394649004
* group[=].element[=].target[=].display = "Nuclear medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pathology
* group[=].element[=].target[+].code = #394915009
* group[=].element[=].target[=].display = "General pathology"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #clinical-biology
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #medical-genetics
* group[=].element[=].target[+].code = #394580004
* group[=].element[=].target[=].display = "Clinical genetics"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #dentistry
* group[=].element[=].target[+].code = #408444009
* group[=].element[=].target[=].display = "Dental-General dental practice"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #orthodontics
* group[=].element[=].target[+].code = #394608004
* group[=].element[=].target[=].display = "Surgery-Dental-Orthodontics"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #pediatric-dentistry
* group[=].element[=].target[+].code = #394607009
* group[=].element[=].target[=].display = "Pediatric dentistry"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #nursing
* group[=].element[=].target[+].code = #106292003
* group[=].element[=].target[=].display = "Professional nurse"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #community-nursing
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #oncology-nursing
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #wound-care
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #diabetes-care
* group[=].element[=].target[+].code = #408475000
* group[=].element[=].target[=].display = "Diabetic medicine"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #stoma-care
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #palliative-nursing
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #physiotherapy
* group[=].element[=].target[+].code = #36682004
* group[=].element[=].target[=].display = "Physiotherapist"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #occupational-therapy
* group[=].element[=].target[+].code = #80546007
* group[=].element[=].target[=].display = "Occupational therapist"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #speech-therapy
* group[=].element[=].target[+].code = #159026005
* group[=].element[=].target[=].display = "Speech and language therapist"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #dietetics
* group[=].element[=].target[+].code = #159033005
* group[=].element[=].target[=].display = "Dietician"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #podiatry
* group[=].element[=].target[+].code = #159034004
* group[=].element[=].target[=].display = "Podiatrist"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #orthoptics
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #prosthetics-orthotics
* group[=].element[=].target[+].code = #309428008
* group[=].element[=].target[=].display = "Orthotist"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #midwifery
* group[=].element[=].target[+].code = #309453006
* group[=].element[=].target[=].display = "Midwife"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #social-work
* group[=].element[=].target[+].code = #106328005
* group[=].element[=].target[=].display = "Social worker"
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[+].code = #patient-navigation
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "No SNOMED CT code in the proposal"
* group[=].element[+].code = #rehabilitation-medicine
* group[=].element[=].target[+].code = #394602003
* group[=].element[=].target[=].display = "Rehabilitation"
* group[=].element[=].target[=].equivalence = #relatedto
