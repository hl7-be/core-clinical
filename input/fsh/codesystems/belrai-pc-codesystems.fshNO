// Hand-authored CodeSystems for the BelRAI Palliative Care questionnaire.
// Separate from common-translations-codesystems.fsh, which is auto-generated
// from common_translations_*.json (BelRAI scoring/scale vocabulary). The
// answer sets here are form-item answers (marital status, assessment reason,
// life expectancy, etc.) and don't appear in the scoring dictionary.
//
// Add a new CodeSystem when you add a new answer set, then mirror it in
// belrai-pc-valuesets.fsh and reference its ValueSet from
// q-belrai-palliative-care.fsh.

// ---------- Beoordelingsinformatie ----------

CodeSystem: CS_BelRaiResidence
Id: cs-belrai-residence
Title: "BelRAI - Verblijfplaats op het tijdstip van beoordeling"
Description: "Verblijfplaats van de persoon op het moment van de beoordeling. Opties nog aan te leveren."
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
// TODO: replace placeholder with the real list once it's provided.
* #res-tbd "TODO: opties nog te verzenden"

CodeSystem: CS_BelRaiTimeSinceHospitalStay
Id: cs-belrai-time-since-hospital-stay
Title: "BelRAI - Tijd sinds laatste ziekenhuisverblijf"
Description: "Tijd verstreken sinds het meest recente ziekenhuisverblijf in de laatste 90 dagen."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #hs-none-90d "Geen ziekenhuisopname in de laatste 90 dagen"
* #hs-31-90d "31-90 dagen geleden"
* #hs-15-30d "15-30 dagen geleden"
* #hs-8-14d "8-14 dagen geleden"
* #hs-last-7d "In de laatste 7 dagen"
* #hs-currently "Nu in het ziekenhuis"

// ---------- Persoonlijke gegevens ----------

CodeSystem: CS_BelRaiMaritalStatus
Id: cs-belrai-marital-status
Title: "BelRAI - Relatiestatus"
Description: "Relatiestatus van de persoon."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #mar-never-married "Nooit gehuwd/geen geregistreerd partnerschap"
* #mar-married "Gehuwd/ander geregistreerd partnerschap"
* #mar-cohabiting "Samenwonend met partner"
* #mar-widowed "Weduwe/weduwnaar"
* #mar-de-facto-separated "Feitelijk gescheiden"
* #mar-legally-separated "Wettelijk gescheiden"

CodeSystem: CS_BelRaiAssessmentReason
Id: cs-belrai-assessment-reason
Title: "BelRAI - Reden voor beoordeling"
Description: "Reden waarom de BelRAI beoordeling wordt uitgevoerd."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #ar-first "Eerste beoordeling"
* #ar-routine "Routinematige herbeoordeling"
* #ar-return "Terugkeerbeoordeling"
* #ar-condition-change "Herbeoordeling wegens een significante toestandsverandering"
* #ar-discharge-3d "Ontslagbeoordeling over de laatste 3 dagen van de zorgverlening"
* #ar-discharge-followup "Ontslagbeoordeling enkel voor het volgen van de persoon"
* #ar-other "Ander"

CodeSystem: CS_BelRaiPalliativeProgramType
Id: cs-belrai-palliative-program-type
Title: "BelRAI - Type palliatief programma"
Description: "Type palliatief zorgprogramma waar de persoon van geniet."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #pp-home-care "Palliatieve thuiszorg"
* #pp-day-center "Palliatief dagcentrum"
* #pp-short-stay "Kortverblijf"
* #pp-bed-care-facility "Palliatief bed in WZC"
* #pp-palliative-unit "Palliatieve eenheid (SP-dienst)"
* #pp-hospice "Hospice"
* #pp-none "Geen"
* #pp-other "Anders"

// ---------- Prognose ----------

CodeSystem: CS_BelRaiLifeExpectancy
Id: cs-belrai-life-expectancy
Title: "BelRAI - Geschatte levensverwachting"
Description: "Geschatte resterende levensverwachting vanaf de beoordelingsreferentiedatum."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #le-imminent "Nakend overlijden (binnen enkele dagen)"
* #le-under-6w "Minder dan 6 weken"
* #le-6w-to-6mo "6 weken of langer, maar minder dan 6 maanden"
* #le-6mo-plus "6 maanden of langer"

CodeSystem: CS_BelRaiAware6Months
Id: cs-belrai-aware-6-months
Title: "BelRAI - Bewustzijn over zes maand of minder"
Description: "De persoon zegt zich ervan bewust te zijn dat hij/zij/die zes maand of minder te leven heeft."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #aw-no-or-na "Nee of niet van toepassing"
* #aw-yes "Ja"
