---
name: careset-to-fhir
description: Turn a CareSet business specification (Word/Excel, NL/FR) into a FHIR logical model, a profile and a model-to-profile mapping ConceptMap in an HL7 Belgium IG. Use whenever asked to add/check a logical model or profile from a CareSet or business spec document, or to capture mappings between a logical model and a profile. AI drafts, humans validate.
---

# CareSet -> FHIR logical model, profile and mapping

The working agreement for this work is: **the AI prepares, only humans validate.**
Everything produced under this skill is a *draft for human review*, never an approved
artefact. Nothing here is committed, pushed, published or declared final by the AI.

## Non-negotiables

1. **Transpose, do not invent.** The logical model is a faithful transposition of the
   source document's element table: same elements, same cardinalities, same descriptions,
   same order. No elements added because "FHIR usually has one", none dropped because
   "R4 cannot express it".
2. **Ask before mapping to FHIR.** Choosing which FHIR element, extension or datatype
   carries a business element is a human decision. Draft an opinion, present the options
   with their consequences, and ask. Ask in batches, not one question at a time.
3. **Never silently deviate.** If the document says 0..* and the base resource forces
   0..1, the deviation is written down in the profile comment *and* in the mapping CSV,
   and it is raised in the answer to the user.
4. **Verify before reporting.** `sushi .` must run to 0 errors and 0 warnings, and the
   generated JSON is inspected for the elements that matter, before anything is called done.
5. **Say what is not done.** Open decisions stay visible as `*TODO*` in the FSH and as a
   row in the mapping CSV. Never quietly leave an element unmapped.

## Workflow

### 1. Read the source
Source documents are the Word (NL and FR) and Excel files, usually in the IG root.
Extract them with python (docx and xlsx are zip archives - `word/document.xml`,
`xl/sharedStrings.xml` + `xl/worksheets/sheet*.xml`); set `PYTHONIOENCODING=utf-8`
on Windows. Read **both** language versions: they occasionally disagree, and a
disagreement is a finding to report, not something to resolve alone.
What matters: the "Elements of X" table (element, min, max, description, FHIR resource),
the ValueSets table, the business rules, and the business cases (they reveal the intended
datatypes - a SNOMED code in an example means the element is coded).

### 2. Logical model
- One `Logical:` per CareSet, `Id`/`Title`/`Description` following the IG's existing
  models - copy the style of the neighbouring files rather than inventing one.
- Keep the document's element names, cardinalities and descriptions. Put the NL/FR
  source text in comments when the IG's other models do that.
- Sub-elements of the table (for example Participant > Period/Role) become
  `BackboneElement` children.
- Datatype choice is the one place judgement is unavoidable: use the obvious FHIR
  datatype (dateTime, Period, CodeableConcept, Reference, Annotation, Duration,
  boolean, code) and flag any that is not obvious.
- When checking an existing model against a newer document version, report a table of
  differences (added, removed, cardinality changed) before touching anything.

### 3. Profile
Draft only after the mapping questions have been answered. House rules:
- **R4 first.** CareSet documents use R5 element names. Where R4 has the equivalent
  element, use it (`actualPeriod` -> `period`, `admission` -> `hospitalization`,
  `reason` -> `reasonCode`/`reasonReference`).
- **Extensions only for what R4 lacks**, in this order of preference:
  1. an existing **be-core** extension - `BeExtRecorder` (author/recorder),
     `BeExtRecordedDate`, `BeExtSimpleNote` (note), `BeExtCodeableConcept`
     (an extra coded value), `BeExtCodeableReference` (CodeableReference backport);
  2. an **R5 pre-adoption** cross-version extension
     (`http://hl7.org/fhir/5.0/StructureDefinition/extension-<Resource>.<element>`),
     but **check its actual value type first** - where R5 changed a type to
     CodeableReference the extension carries only the Reference half and is useless
     for a coded value;
  3. a **local extension** in the IG, as a last resort, with a `*TODO*` noting whether
     it should move to be-core.
- Never assume an extension exists because it "should" - list the package's
  StructureDefinition files and check. Report it plainly when it is missing.
- Base-resource limits (mandatory single `Encounter.class`, `EpisodeOfCare.managingOrganization`
  0..1, R4 `reAdmission` being a CodeableConcept) cannot be profiled away. Map to what
  exists, document the deviation, do not fabricate a workaround.
- Mark every element that realises a CareSet element as `MS`.
- Reference targets: use the Be profile when it exists in the dependencies; otherwise the
  base resource with `^short = "*TODO* X -> BeX"`, matching the IG's existing placeholders.
- Keep the profile readable: one comment line per CareSet element, in document order.

### 4. Mapping CSV -> ConceptMap
Every model-to-profile mapping is captured in a CSV under `mappings/`, one file per
model/profile pair, with the columns:

    sourceCode, sourceDisplay, relationship, targetCode, targetDisplay, comment

- `relationship` is an R4 ConceptMap equivalence: `equivalent`, `wider`, `narrower`,
  `inexact`, `unmatched`.
- `comment` is where the reasoning lives - why an extension was used, which base-resource
  limit forced a deviation, what is still open. This is the column humans read first.
- Rows with no target yet use `unmatched` with an empty target and the reason in the comment.
- `mappings/generate-conceptmaps.py` turns the CSVs into `input/fsh/maps/*.fsh`
  (a ConceptMap instance built from the `ConceptMapElement` ruleset). Edit the CSV and
  regenerate; never hand-edit the generated FSH.
- The CSV is the review surface: a human validates the mapping there, not in the FSH.

### 5. Build and report
- Run `sushi .` in the IG. 0 errors, 0 warnings.
- Inspect `fsh-generated/resources/` for the profile: check that every extension slice
  resolved to the intended canonical and that reference targets landed.
- Report: what was produced, every deviation from the document, every open `*TODO*`,
  and the questions that still need a human answer. Never report a mapping as agreed
  when it was assumed.

## Governance: issues, PRs and the group agenda

Changes to main are reviewed and validated **by the group**, not by whoever wrote them.
The AI's job is to make that review cheap: small, traceable, and pointed at the decisions
that actually need the group's time.

- **Every change is associated with a GitHub issue** - precise (one issue for one change)
  or coarse (an umbrella issue covering a whole CareSet). Look the issue up first
  (`gh issue list`) and work under its number; examples: `#146 [BeEncounter]: business
  documentation V0.7`, `#139 Be EpisodeOfCare: business documentation`. If no issue fits,
  propose one and ask before opening it - do not start untracked work.
- **Work on a topic branch** named after the subject (`encounter`, `episode-of-care`),
  never directly on master.
- **Carry the issue number in commit messages and PR titles** the way the repo already
  does it (`Add encounter #146`).
- **Notify and feed the agenda.** Every PR carries a short note the group can read before
  the meeting:
  - what changed, in one or two lines per artefact;
  - every deviation from the source document and why it was unavoidable;
  - the open decisions, phrased as questions with options - these are the agenda;
  - what was assumed in the absence of an answer, so a silent assumption never slips
    through review.
  Keep it decision-focused. Meeting time goes to what must be decided, not to what is routine.
- **Point at the review surface.** For mappings that is the CSV in `mappings/`, row by row -
  not the generated FSH. Name the specific rows that need a group answer.
- **Flag cross-repo impact** (an extension added to be-core, a profile moving between IGs,
  a dependency pointed at a local `#dev` build). Each of those needs its own issue and PR
  in that repo, and the group needs to know the change spans repos.
- **Depending on an unreleased package couples the releases, and that is a WG decision.**
  Using an extension from a local `#dev` build means this IG cannot be released until the
  upstream IG is released with that extension in it. Say so explicitly on the agenda -
  name the package, the artefacts that depend on it, and the choice in front of the group:
  release the upstream IG first, wait, or avoid the dependency (drop the element, or carry
  it locally). Never let a `#dev` dependency reach a release candidate unnoticed.
- The AI never merges, never approves, and never records a decision as taken. Group review
  is what validates a change.

## Questions that always go to a human

- Which FHIR element or extension carries a business element that R4 lacks.
- Whether to pre-adopt R5, use a be-core extension, or define a local one.
- Whether to add or change an IG dependency (including pointing at a local `#dev` build).
- Value set bindings and their strength, and any binding not stated in the document.
- Whether a native element is kept next to an extension, or shut down to 0..0.
- Anything where the NL and FR documents disagree, or where the document contradicts
  its own business cases.

## What the AI does not do

- Commit, push, open PRs, merge, or publish - unless explicitly asked.
- Start work that no GitHub issue covers.
- Change the document's cardinalities to what FHIR finds convenient.
- Delete or overwrite untracked work in the tree.
- Call a mapping validated. Only a human validates.
