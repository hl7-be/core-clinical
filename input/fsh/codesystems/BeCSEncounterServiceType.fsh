CodeSystem: BeCSEncounterServiceType
Id: be-cs-encounter-servicetype
Title: "Encounter Service Type"
Description: "Types of service or specialisation offered during an Encounter. Content of the proposal VS_Be_ServiceType_Voorstel referenced by CareSet Encounter V0.7 (#146), still under discussion."
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^jurisdiction.coding[+] = urn:iso:std:iso:3166#BE

* #general-practice "General practice"
* #general-practice ^designation[0].language = #nl-BE
* #general-practice ^designation[=].value = "Huisartsgeneeskunde"
* #general-practice ^designation[+].language = #fr-BE
* #general-practice ^designation[=].value = "Médecine générale"
* #occupational-medicine "Occupational medicine"
* #occupational-medicine ^designation[0].language = #nl-BE
* #occupational-medicine ^designation[=].value = "Arbeidsgeneeskunde"
* #occupational-medicine ^designation[+].language = #fr-BE
* #occupational-medicine ^designation[=].value = "Médecine du travail"
* #internal-medicine "Internal medicine"
* #internal-medicine ^designation[0].language = #nl-BE
* #internal-medicine ^designation[=].value = "Interne geneeskunde"
* #internal-medicine ^designation[+].language = #fr-BE
* #internal-medicine ^designation[=].value = "Médecine interne"
* #cardiology "Cardiology"
* #cardiology ^designation[0].language = #nl-BE
* #cardiology ^designation[=].value = "Cardiologie"
* #cardiology ^designation[+].language = #fr-BE
* #cardiology ^designation[=].value = "Cardiologie"
* #endocrinology "Endocrinology"
* #endocrinology ^designation[0].language = #nl-BE
* #endocrinology ^designation[=].value = "Endocrinologie"
* #endocrinology ^designation[+].language = #fr-BE
* #endocrinology ^designation[=].value = "Endocrinologie"
* #gastroenterology "Gastroenterology"
* #gastroenterology ^designation[0].language = #nl-BE
* #gastroenterology ^designation[=].value = "Gastro-enterologie"
* #gastroenterology ^designation[+].language = #fr-BE
* #gastroenterology ^designation[=].value = "Gastro-entérologie"
* #hepatology "Hepatology"
* #hepatology ^designation[0].language = #nl-BE
* #hepatology ^designation[=].value = "Hepatologie"
* #hepatology ^designation[+].language = #fr-BE
* #hepatology ^designation[=].value = "Hépatologie"
* #nephrology "Nephrology"
* #nephrology ^designation[0].language = #nl-BE
* #nephrology ^designation[=].value = "Nefrologie"
* #nephrology ^designation[+].language = #fr-BE
* #nephrology ^designation[=].value = "Néphrologie"
* #rheumatology "Rheumatology"
* #rheumatology ^designation[0].language = #nl-BE
* #rheumatology ^designation[=].value = "Reumatologie"
* #rheumatology ^designation[+].language = #fr-BE
* #rheumatology ^designation[=].value = "Rhumatologie"
* #pulmonology "Pulmonology"
* #pulmonology ^designation[0].language = #nl-BE
* #pulmonology ^designation[=].value = "Pneumologie"
* #pulmonology ^designation[+].language = #fr-BE
* #pulmonology ^designation[=].value = "Pneumologie"
* #infectious-disease "Infectious disease"
* #infectious-disease ^designation[0].language = #nl-BE
* #infectious-disease ^designation[=].value = "Infectiologie"
* #infectious-disease ^designation[+].language = #fr-BE
* #infectious-disease ^designation[=].value = "Maladies infectieuses"
* #geriatrics "Geriatrics"
* #geriatrics ^designation[0].language = #nl-BE
* #geriatrics ^designation[=].value = "Geriatrie"
* #geriatrics ^designation[+].language = #fr-BE
* #geriatrics ^designation[=].value = "Gériatrie"
* #hematology "Hematology"
* #hematology ^designation[0].language = #nl-BE
* #hematology ^designation[=].value = "Hematologie"
* #hematology ^designation[+].language = #fr-BE
* #hematology ^designation[=].value = "Hématologie"
* #oncology "Oncology"
* #oncology ^designation[0].language = #nl-BE
* #oncology ^designation[=].value = "Medische oncologie"
* #oncology ^designation[+].language = #fr-BE
* #oncology ^designation[=].value = "Oncologie médicale"
* #immunology "Immunology"
* #immunology ^designation[0].language = #nl-BE
* #immunology ^designation[=].value = "Immunologie"
* #immunology ^designation[+].language = #fr-BE
* #immunology ^designation[=].value = "Immunologie"
* #allergology "Allergology"
* #allergology ^designation[0].language = #nl-BE
* #allergology ^designation[=].value = "Allergologie"
* #allergology ^designation[+].language = #fr-BE
* #allergology ^designation[=].value = "Allergologie"
* #palliative-care "Palliative care"
* #palliative-care ^designation[0].language = #nl-BE
* #palliative-care ^designation[=].value = "Palliatieve geneeskunde"
* #palliative-care ^designation[+].language = #fr-BE
* #palliative-care ^designation[=].value = "Médecine palliative"
* #tropical-medicine "Tropical medicine"
* #tropical-medicine ^designation[0].language = #nl-BE
* #tropical-medicine ^designation[=].value = "Tropische geneeskunde"
* #tropical-medicine ^designation[+].language = #fr-BE
* #tropical-medicine ^designation[=].value = "Médecine tropicale"
* #sports-medicine "Sports medicine"
* #sports-medicine ^designation[0].language = #nl-BE
* #sports-medicine ^designation[=].value = "Sportgeneeskunde"
* #sports-medicine ^designation[+].language = #fr-BE
* #sports-medicine ^designation[=].value = "Médecine du sport"
* #emergency-medicine "Emergency medicine"
* #emergency-medicine ^designation[0].language = #nl-BE
* #emergency-medicine ^designation[=].value = "Spoedgevallengeneeskunde"
* #emergency-medicine ^designation[+].language = #fr-BE
* #emergency-medicine ^designation[=].value = "Médecine d'urgence"
* #intensive-care "Intensive care"
* #intensive-care ^designation[0].language = #nl-BE
* #intensive-care ^designation[=].value = "Intensieve geneeskunde"
* #intensive-care ^designation[+].language = #fr-BE
* #intensive-care ^designation[=].value = "Médecine intensive"
* #disaster-medicine "Disaster medicine"
* #disaster-medicine ^designation[0].language = #nl-BE
* #disaster-medicine ^designation[=].value = "Rampengeneeskunde"
* #disaster-medicine ^designation[+].language = #fr-BE
* #disaster-medicine ^designation[=].value = "Médecine de catastrophe"
* #neurology "Neurology"
* #neurology ^designation[0].language = #nl-BE
* #neurology ^designation[=].value = "Neurologie"
* #neurology ^designation[+].language = #fr-BE
* #neurology ^designation[=].value = "Neurologie"
* #neurosurgery "Neurosurgery"
* #neurosurgery ^designation[0].language = #nl-BE
* #neurosurgery ^designation[=].value = "Neurochirurgie"
* #neurosurgery ^designation[+].language = #fr-BE
* #neurosurgery ^designation[=].value = "Neurochirurgie"
* #neuropsychology "Neuropsychology"
* #neuropsychology ^designation[0].language = #nl-BE
* #neuropsychology ^designation[=].value = "Neuropsychologie"
* #neuropsychology ^designation[+].language = #fr-BE
* #neuropsychology ^designation[=].value = "Neuropsychologie"
* #sleep-medicine "Sleep medicine"
* #sleep-medicine ^designation[0].language = #nl-BE
* #sleep-medicine ^designation[=].value = "Slaapgeneeskunde"
* #sleep-medicine ^designation[+].language = #fr-BE
* #sleep-medicine ^designation[=].value = "Médecine du sommeil"
* #gynecology "Gynecology"
* #gynecology ^designation[0].language = #nl-BE
* #gynecology ^designation[=].value = "Gynaecologie"
* #gynecology ^designation[+].language = #fr-BE
* #gynecology ^designation[=].value = "Gynécologie"
* #obstetrics "Obstetrics"
* #obstetrics ^designation[0].language = #nl-BE
* #obstetrics ^designation[=].value = "Verloskunde"
* #obstetrics ^designation[+].language = #fr-BE
* #obstetrics ^designation[=].value = "Obstétrique"
* #reproductive-medicine "Reproductive medicine"
* #reproductive-medicine ^designation[0].language = #nl-BE
* #reproductive-medicine ^designation[=].value = "Reproductieve geneeskunde"
* #reproductive-medicine ^designation[+].language = #fr-BE
* #reproductive-medicine ^designation[=].value = "Médecine de la reproduction"
* #neonatology "Neonatology"
* #neonatology ^designation[0].language = #nl-BE
* #neonatology ^designation[=].value = "Neonatologie"
* #neonatology ^designation[+].language = #fr-BE
* #neonatology ^designation[=].value = "Néonatologie"
* #pediatrics "Pediatrics"
* #pediatrics ^designation[0].language = #nl-BE
* #pediatrics ^designation[=].value = "Pediatrie"
* #pediatrics ^designation[+].language = #fr-BE
* #pediatrics ^designation[=].value = "Pédiatrie"
* #pediatric-cardiology "Pediatric cardiology"
* #pediatric-cardiology ^designation[0].language = #nl-BE
* #pediatric-cardiology ^designation[=].value = "Kindercardiologie"
* #pediatric-cardiology ^designation[+].language = #fr-BE
* #pediatric-cardiology ^designation[=].value = "Cardiologie pédiatrique"
* #pediatric-endocrinology "Pediatric endocrinology"
* #pediatric-endocrinology ^designation[0].language = #nl-BE
* #pediatric-endocrinology ^designation[=].value = "Kinderendocrinologie"
* #pediatric-endocrinology ^designation[+].language = #fr-BE
* #pediatric-endocrinology ^designation[=].value = "Endocrinologie pédiatrique"
* #pediatric-gastroenterology "Pediatric gastroenterology"
* #pediatric-gastroenterology ^designation[0].language = #nl-BE
* #pediatric-gastroenterology ^designation[=].value = "Kinder-gastro-enterologie"
* #pediatric-gastroenterology ^designation[+].language = #fr-BE
* #pediatric-gastroenterology ^designation[=].value = "Gastro-entérologie pédiatrique"
* #pediatric-hepatology "Pediatric hepatology"
* #pediatric-hepatology ^designation[0].language = #nl-BE
* #pediatric-hepatology ^designation[=].value = "Kinderhepatologie"
* #pediatric-hepatology ^designation[+].language = #fr-BE
* #pediatric-hepatology ^designation[=].value = "Hépatologie pédiatrique"
* #pediatric-hematology "Pediatric hematology"
* #pediatric-hematology ^designation[0].language = #nl-BE
* #pediatric-hematology ^designation[=].value = "Kinderhematologie"
* #pediatric-hematology ^designation[+].language = #fr-BE
* #pediatric-hematology ^designation[=].value = "Hématologie pédiatrique"
* #pediatric-immunology "Pediatric immunology"
* #pediatric-immunology ^designation[0].language = #nl-BE
* #pediatric-immunology ^designation[=].value = "Kinderimmunologie"
* #pediatric-immunology ^designation[+].language = #fr-BE
* #pediatric-immunology ^designation[=].value = "Immunologie pédiatrique"
* #pediatric-allergy "Pediatric allergy"
* #pediatric-allergy ^designation[0].language = #nl-BE
* #pediatric-allergy ^designation[=].value = "Kinderallergologie"
* #pediatric-allergy ^designation[+].language = #fr-BE
* #pediatric-allergy ^designation[=].value = "Allergologie pédiatrique"
* #pediatric-infectious-disease "Pediatric infectious disease"
* #pediatric-infectious-disease ^designation[0].language = #nl-BE
* #pediatric-infectious-disease ^designation[=].value = "Kinderinfectiologie"
* #pediatric-infectious-disease ^designation[+].language = #fr-BE
* #pediatric-infectious-disease ^designation[=].value = "Maladies infectieuses pédiatriques"
* #pediatric-intensive-care "Pediatric intensive care"
* #pediatric-intensive-care ^designation[0].language = #nl-BE
* #pediatric-intensive-care ^designation[=].value = "Pediatrische intensieve geneeskunde"
* #pediatric-intensive-care ^designation[+].language = #fr-BE
* #pediatric-intensive-care ^designation[=].value = "Médecine intensive pédiatrique"
* #pediatric-oncology "Pediatric oncology"
* #pediatric-oncology ^designation[0].language = #nl-BE
* #pediatric-oncology ^designation[=].value = "Kinderoncologie"
* #pediatric-oncology ^designation[+].language = #fr-BE
* #pediatric-oncology ^designation[=].value = "Oncologie pédiatrique"
* #pediatric-nephrology "Pediatric nephrology"
* #pediatric-nephrology ^designation[0].language = #nl-BE
* #pediatric-nephrology ^designation[=].value = "Kindernefrologie"
* #pediatric-nephrology ^designation[+].language = #fr-BE
* #pediatric-nephrology ^designation[=].value = "Néphrologie pédiatrique"
* #pediatric-neurology "Pediatric neurology"
* #pediatric-neurology ^designation[0].language = #nl-BE
* #pediatric-neurology ^designation[=].value = "Kinderneurologie"
* #pediatric-neurology ^designation[+].language = #fr-BE
* #pediatric-neurology ^designation[=].value = "Neurologie pédiatrique"
* #pediatric-pulmonology "Pediatric pulmonology"
* #pediatric-pulmonology ^designation[0].language = #nl-BE
* #pediatric-pulmonology ^designation[=].value = "Kinderpneumologie"
* #pediatric-pulmonology ^designation[+].language = #fr-BE
* #pediatric-pulmonology ^designation[=].value = "Pneumologie pédiatrique"
* #pediatric-rheumatology "Pediatric rheumatology"
* #pediatric-rheumatology ^designation[0].language = #nl-BE
* #pediatric-rheumatology ^designation[=].value = "Kinderreumatologie"
* #pediatric-rheumatology ^designation[+].language = #fr-BE
* #pediatric-rheumatology ^designation[=].value = "Rhumatologie pédiatrique"
* #pediatric-sleep-medicine "Pediatric sleep medicine"
* #pediatric-sleep-medicine ^designation[0].language = #nl-BE
* #pediatric-sleep-medicine ^designation[=].value = "Pediatrische slaapgeneeskunde"
* #pediatric-sleep-medicine ^designation[+].language = #fr-BE
* #pediatric-sleep-medicine ^designation[=].value = "Médecine du sommeil pédiatrique"
* #pediatric-rehabilitation "Pediatric rehabilitation"
* #pediatric-rehabilitation ^designation[0].language = #nl-BE
* #pediatric-rehabilitation ^designation[=].value = "Pediatrische revalidatiegeneeskunde"
* #pediatric-rehabilitation ^designation[+].language = #fr-BE
* #pediatric-rehabilitation ^designation[=].value = "Réadaptation pédiatrique"
* #pediatric-surgery "Pediatric surgery"
* #pediatric-surgery ^designation[0].language = #nl-BE
* #pediatric-surgery ^designation[=].value = "Kinderchirurgie"
* #pediatric-surgery ^designation[+].language = #fr-BE
* #pediatric-surgery ^designation[=].value = "Chirurgie pédiatrique"
* #child-psychiatry "Child psychiatry"
* #child-psychiatry ^designation[0].language = #nl-BE
* #child-psychiatry ^designation[=].value = "Kinder- en jeugdpsychiatrie"
* #child-psychiatry ^designation[+].language = #fr-BE
* #child-psychiatry ^designation[=].value = "Psychiatrie infanto-juvénile"
* #general-surgery "General surgery"
* #general-surgery ^designation[0].language = #nl-BE
* #general-surgery ^designation[=].value = "Algemene heelkunde"
* #general-surgery ^designation[+].language = #fr-BE
* #general-surgery ^designation[=].value = "Chirurgie générale"
* #cardiac-surgery "Cardiac surgery"
* #cardiac-surgery ^designation[0].language = #nl-BE
* #cardiac-surgery ^designation[=].value = "Cardiochirurgie"
* #cardiac-surgery ^designation[+].language = #fr-BE
* #cardiac-surgery ^designation[=].value = "Chirurgie cardiaque"
* #thoracic-surgery "Thoracic surgery"
* #thoracic-surgery ^designation[0].language = #nl-BE
* #thoracic-surgery ^designation[=].value = "Thoraxchirurgie"
* #thoracic-surgery ^designation[+].language = #fr-BE
* #thoracic-surgery ^designation[=].value = "Chirurgie thoracique"
* #vascular-surgery "Vascular surgery"
* #vascular-surgery ^designation[0].language = #nl-BE
* #vascular-surgery ^designation[=].value = "Vaatchirurgie"
* #vascular-surgery ^designation[+].language = #fr-BE
* #vascular-surgery ^designation[=].value = "Chirurgie vasculaire"
* #orthopedic-surgery "Orthopedic surgery"
* #orthopedic-surgery ^designation[0].language = #nl-BE
* #orthopedic-surgery ^designation[=].value = "Orthopedische heelkunde"
* #orthopedic-surgery ^designation[+].language = #fr-BE
* #orthopedic-surgery ^designation[=].value = "Chirurgie orthopédique"
* #trauma-surgery "Trauma surgery"
* #trauma-surgery ^designation[0].language = #nl-BE
* #trauma-surgery ^designation[=].value = "Traumachirurgie"
* #trauma-surgery ^designation[+].language = #fr-BE
* #trauma-surgery ^designation[=].value = "Chirurgie traumatologique"
* #plastic-surgery "Plastic surgery"
* #plastic-surgery ^designation[0].language = #nl-BE
* #plastic-surgery ^designation[=].value = "Plastische heelkunde"
* #plastic-surgery ^designation[+].language = #fr-BE
* #plastic-surgery ^designation[=].value = "Chirurgie plastique"
* #maxillofacial-surgery "Maxillofacial surgery"
* #maxillofacial-surgery ^designation[0].language = #nl-BE
* #maxillofacial-surgery ^designation[=].value = "Mond-, kaak- en aangezichtschirurgie"
* #maxillofacial-surgery ^designation[+].language = #fr-BE
* #maxillofacial-surgery ^designation[=].value = "Chirurgie maxillo-faciale"
* #transplant-surgery "Transplant surgery"
* #transplant-surgery ^designation[0].language = #nl-BE
* #transplant-surgery ^designation[=].value = "Transplantatiechirurgie"
* #transplant-surgery ^designation[+].language = #fr-BE
* #transplant-surgery ^designation[=].value = "Chirurgie de transplantation"
* #ophthalmology "Ophthalmology"
* #ophthalmology ^designation[0].language = #nl-BE
* #ophthalmology ^designation[=].value = "Oogheelkunde"
* #ophthalmology ^designation[+].language = #fr-BE
* #ophthalmology ^designation[=].value = "Ophtalmologie"
* #ent "Ear, nose and throat (ENT)"
* #ent ^designation[0].language = #nl-BE
* #ent ^designation[=].value = "Neus-, keel- en oorziekten (NKO)"
* #ent ^designation[+].language = #fr-BE
* #ent ^designation[=].value = "Oto-rhino-laryngologie (ORL)"
* #audiology "Audiology"
* #audiology ^designation[0].language = #nl-BE
* #audiology ^designation[=].value = "Audiologie"
* #audiology ^designation[+].language = #fr-BE
* #audiology ^designation[=].value = "Audiologie"
* #anesthesiology "Anesthesiology"
* #anesthesiology ^designation[0].language = #nl-BE
* #anesthesiology ^designation[=].value = "Anesthesiologie"
* #anesthesiology ^designation[+].language = #fr-BE
* #anesthesiology ^designation[=].value = "Anesthésiologie"
* #pain-medicine "Pain medicine"
* #pain-medicine ^designation[0].language = #nl-BE
* #pain-medicine ^designation[=].value = "Pijngeneeskunde"
* #pain-medicine ^designation[+].language = #fr-BE
* #pain-medicine ^designation[=].value = "Médecine de la douleur"
* #psychiatry "Psychiatry"
* #psychiatry ^designation[0].language = #nl-BE
* #psychiatry ^designation[=].value = "Psychiatrie"
* #psychiatry ^designation[+].language = #fr-BE
* #psychiatry ^designation[=].value = "Psychiatrie"
* #geriatric-psychiatry "Geriatric psychiatry"
* #geriatric-psychiatry ^designation[0].language = #nl-BE
* #geriatric-psychiatry ^designation[=].value = "Ouderenpsychiatrie"
* #geriatric-psychiatry ^designation[+].language = #fr-BE
* #geriatric-psychiatry ^designation[=].value = "Psychiatrie gériatrique"
* #psychology "Psychology"
* #psychology ^designation[0].language = #nl-BE
* #psychology ^designation[=].value = "Psychologie"
* #psychology ^designation[+].language = #fr-BE
* #psychology ^designation[=].value = "Psychologie"
* #clinical-psychology "Clinical psychology"
* #clinical-psychology ^designation[0].language = #nl-BE
* #clinical-psychology ^designation[=].value = "Klinische psychologie"
* #clinical-psychology ^designation[+].language = #fr-BE
* #clinical-psychology ^designation[=].value = "Psychologie clinique"
* #psychotherapy "Psychotherapy"
* #psychotherapy ^designation[0].language = #nl-BE
* #psychotherapy ^designation[=].value = "Psychotherapie"
* #psychotherapy ^designation[+].language = #fr-BE
* #psychotherapy ^designation[=].value = "Psychothérapie"
* #sexology "Sexology"
* #sexology ^designation[0].language = #nl-BE
* #sexology ^designation[=].value = "Seksuologie"
* #sexology ^designation[+].language = #fr-BE
* #sexology ^designation[=].value = "Sexologie"
* #addiction-care "Addiction care"
* #addiction-care ^designation[0].language = #nl-BE
* #addiction-care ^designation[=].value = "Verslavingszorg"
* #addiction-care ^designation[+].language = #fr-BE
* #addiction-care ^designation[=].value = "Addictologie"
* #radiology "Radiology"
* #radiology ^designation[0].language = #nl-BE
* #radiology ^designation[=].value = "Radiologie"
* #radiology ^designation[+].language = #fr-BE
* #radiology ^designation[=].value = "Radiologie"
* #nuclear-medicine "Nuclear medicine"
* #nuclear-medicine ^designation[0].language = #nl-BE
* #nuclear-medicine ^designation[=].value = "Nucleaire geneeskunde"
* #nuclear-medicine ^designation[+].language = #fr-BE
* #nuclear-medicine ^designation[=].value = "Médecine nucléaire"
* #pathology "Pathology"
* #pathology ^designation[0].language = #nl-BE
* #pathology ^designation[=].value = "Anatomopathologie"
* #pathology ^designation[+].language = #fr-BE
* #pathology ^designation[=].value = "Anatomopathologie"
* #clinical-biology "Clinical biology"
* #clinical-biology ^designation[0].language = #nl-BE
* #clinical-biology ^designation[=].value = "Klinische biologie"
* #clinical-biology ^designation[+].language = #fr-BE
* #clinical-biology ^designation[=].value = "Biologie clinique"
* #medical-genetics "Medical genetics"
* #medical-genetics ^designation[0].language = #nl-BE
* #medical-genetics ^designation[=].value = "Klinische genetica"
* #medical-genetics ^designation[+].language = #fr-BE
* #medical-genetics ^designation[=].value = "Génétique clinique"
* #dentistry "Dentistry"
* #dentistry ^designation[0].language = #nl-BE
* #dentistry ^designation[=].value = "Tandheelkunde"
* #dentistry ^designation[+].language = #fr-BE
* #dentistry ^designation[=].value = "Médecine dentaire"
* #orthodontics "Orthodontics"
* #orthodontics ^designation[0].language = #nl-BE
* #orthodontics ^designation[=].value = "Orthodontie"
* #orthodontics ^designation[+].language = #fr-BE
* #orthodontics ^designation[=].value = "Orthodontie"
* #pediatric-dentistry "Pediatric dentistry"
* #pediatric-dentistry ^designation[0].language = #nl-BE
* #pediatric-dentistry ^designation[=].value = "Kindertandheelkunde"
* #pediatric-dentistry ^designation[+].language = #fr-BE
* #pediatric-dentistry ^designation[=].value = "Dentisterie pédiatrique"
* #nursing "Nursing"
* #nursing ^designation[0].language = #nl-BE
* #nursing ^designation[=].value = "Verpleegkunde"
* #nursing ^designation[+].language = #fr-BE
* #nursing ^designation[=].value = "Soins infirmiers"
* #community-nursing "Community nursing"
* #community-nursing ^designation[0].language = #nl-BE
* #community-nursing ^designation[=].value = "Thuisverpleegkunde"
* #community-nursing ^designation[+].language = #fr-BE
* #community-nursing ^designation[=].value = "Soins infirmiers à domicile"
* #oncology-nursing "Oncology nursing"
* #oncology-nursing ^designation[0].language = #nl-BE
* #oncology-nursing ^designation[=].value = "Oncologieverpleegkunde"
* #oncology-nursing ^designation[+].language = #fr-BE
* #oncology-nursing ^designation[=].value = "Soins infirmiers oncologiques"
* #wound-care "Wound care"
* #wound-care ^designation[0].language = #nl-BE
* #wound-care ^designation[=].value = "Wondzorg"
* #wound-care ^designation[+].language = #fr-BE
* #wound-care ^designation[=].value = "Soins des plaies"
* #diabetes-care "Diabetes care"
* #diabetes-care ^designation[0].language = #nl-BE
* #diabetes-care ^designation[=].value = "Diabeteszorg"
* #diabetes-care ^designation[+].language = #fr-BE
* #diabetes-care ^designation[=].value = "Soins du diabète"
* #stoma-care "Stoma care"
* #stoma-care ^designation[0].language = #nl-BE
* #stoma-care ^designation[=].value = "Stomazorg"
* #stoma-care ^designation[+].language = #fr-BE
* #stoma-care ^designation[=].value = "Soins de stomie"
* #palliative-nursing "Palliative nursing"
* #palliative-nursing ^designation[0].language = #nl-BE
* #palliative-nursing ^designation[=].value = "Palliatieve verpleegkunde"
* #palliative-nursing ^designation[+].language = #fr-BE
* #palliative-nursing ^designation[=].value = "Soins infirmiers palliatifs"
* #physiotherapy "Physiotherapy"
* #physiotherapy ^designation[0].language = #nl-BE
* #physiotherapy ^designation[=].value = "Kinesitherapie"
* #physiotherapy ^designation[+].language = #fr-BE
* #physiotherapy ^designation[=].value = "Kinésithérapie"
* #occupational-therapy "Occupational therapy"
* #occupational-therapy ^designation[0].language = #nl-BE
* #occupational-therapy ^designation[=].value = "Ergotherapie"
* #occupational-therapy ^designation[+].language = #fr-BE
* #occupational-therapy ^designation[=].value = "Ergothérapie"
* #speech-therapy "Speech therapy"
* #speech-therapy ^designation[0].language = #nl-BE
* #speech-therapy ^designation[=].value = "Logopedie"
* #speech-therapy ^designation[+].language = #fr-BE
* #speech-therapy ^designation[=].value = "Logopédie"
* #dietetics "Dietetics"
* #dietetics ^designation[0].language = #nl-BE
* #dietetics ^designation[=].value = "Diëtiek"
* #dietetics ^designation[+].language = #fr-BE
* #dietetics ^designation[=].value = "Diétique"
* #podiatry "Podiatry"
* #podiatry ^designation[0].language = #nl-BE
* #podiatry ^designation[=].value = "Podologie"
* #podiatry ^designation[+].language = #fr-BE
* #podiatry ^designation[=].value = "Podologie"
* #orthoptics "Orthoptics"
* #orthoptics ^designation[0].language = #nl-BE
* #orthoptics ^designation[=].value = "Orthoptie"
* #orthoptics ^designation[+].language = #fr-BE
* #orthoptics ^designation[=].value = "Orthoptie"
* #prosthetics-orthotics "Prosthetics and orthotics"
* #prosthetics-orthotics ^designation[0].language = #nl-BE
* #prosthetics-orthotics ^designation[=].value = "Orthesen en prothesen"
* #prosthetics-orthotics ^designation[+].language = #fr-BE
* #prosthetics-orthotics ^designation[=].value = "Orthèses et prothèses"
* #midwifery "Midwifery"
* #midwifery ^designation[0].language = #nl-BE
* #midwifery ^designation[=].value = "Vroedkunde"
* #midwifery ^designation[+].language = #fr-BE
* #midwifery ^designation[=].value = "Sage-femme"
* #social-work "Social work"
* #social-work ^designation[0].language = #nl-BE
* #social-work ^designation[=].value = "Maatschappelijk werk"
* #social-work ^designation[+].language = #fr-BE
* #social-work ^designation[=].value = "Travail social"
* #patient-navigation "Patient navigation"
* #patient-navigation ^designation[0].language = #nl-BE
* #patient-navigation ^designation[=].value = "Patiëntbegeleiding"
* #patient-navigation ^designation[+].language = #fr-BE
* #patient-navigation ^designation[=].value = "Accompagnement du patient"
* #rehabilitation-medicine "Rehabilitation medicine"
* #rehabilitation-medicine ^designation[0].language = #nl-BE
* #rehabilitation-medicine ^designation[=].value = "Fysische geneeskunde en revalidatie"
* #rehabilitation-medicine ^designation[+].language = #fr-BE
* #rehabilitation-medicine ^designation[=].value = "Médecine physique et réadaptation"
