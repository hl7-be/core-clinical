### Scope

BeScoreResult carries the result of a clinical assessment scale taken for a patient, such as the Katz scale, the Braden scale, the Glasgow Coma Scale or the Apgar score, together with its sub-scores when the scale has them. It applies in every care setting.

Out of scope:
- the individual questions and answers that a score is based on. Only the scale results, sub-scores and intermediate scores are exchanged;
- BelRAI assessments, with their care scale scores and Collaborative Action Plans (CAPs).

The source is CareSet BeScoreResult V0.1 (24/09/2026). The [mapping](ConceptMap-map-be-scoreresult.html) from the [logical model](StructureDefinition-BeModelScoreResult.html) to this profile lists every deviation from the CareSet and every open question.

### Grouping scores

When a scale has several parts, they are grouped in one of two ways:

- **component**: the parts are taken at the same time, by the same performer, in one clinical act. This is the usual case. Examples: the [Apgar score](https://hl7.org/fhir/R4/observation-example-5minute-apgar-score.html) and the [Glasgow Coma Scale](https://hl7.org/fhir/R4/observation-example-glasgow.html).
- **hasMember**: the parts are taken at different times, by different performers or on different domains. Each part is then an observation of its own, and the parts are grouped with `hasMember`.
  - A scale repeated over time, such as the Glasgow Coma Scale at 0, 15 and 30 minutes, is one observation per measurement, grouped with `hasMember`. Within each measurement, the items are still components.
  - The Functional Independence Measure (FIM) has a motor domain and a cognitive domain, often scored at different moments by different performers (occupational therapist, physiotherapist, speech therapist). Each domain total is a member of the overall score, and the items within a domain are components. When knowing the performer adds little value, all items may be grouped in one observation.

### Rules

- `method` (a descendant of SNOMED CT 254291000 |Staging and scales|) is on the main observation, the one carrying the overall scale score. When parts have their own method, device or performer, they are grouped with `hasMember` and each part carries its own `method`. With `component`, all parts share the same method.
- Only scores with status `final` are recorded. `entered-in-error` is allowed as a fallback.
- For now, two code systems are allowed: SNOMED CT and LOINC.
