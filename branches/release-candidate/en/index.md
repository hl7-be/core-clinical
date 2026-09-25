# Transversal Clinical Core - Clinical Core v1.3.0

## Transversal Clinical Core

This is the Belgian Core Clinical FHIR Implementation Guide. It contains the clinical specifications developed by our community that can be reused in other implementation guides.

### Content

This IG is structured in the following content sections:

**Background:** Information about the specifications, or what you should know to be able to best navigate and use these specifications. Contains a general introduction to the publication structure and content, the artefact types, common privacy and security specifications and the official HL7 FHIR release that this specification is based upon.

**Functional Description:** Functional content, more relevant for business or functional analysts, as well as health professionals. Contains the context around these specifications (relevant projects, legal and implementation aspects), the interoperability actors and transactions, and especially the use cases that have been considered in the specification and the logical data models – the functional (i.e. non-technical) data sets that are used in data exchange.

**Detailed Specifications:** The actual technical specifications – the FHIR conformance resources that are defined in this specification – profiles, data types, capability statements. This is targeted at (technical) implementers.

**Terminology:** The vocabulary resources – Naming Systems, Code Systems and Value Sets, which support semantic interoperability. These resources define the use of standard terminologies (e.g. LOINC, SNOMED-CT) or internal codes for Belgium, e.g. official codes for Civil Status).

The top menu allows quick navigation to the different sections, and a [Table of Contents](toc.md) is provided with the entire content of this Implementation Guide. (Be aware that some pages have multiple tabs).

### Dependencies

This IG Contains the following dependencies on other IGs.






### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.be.core-clinical.r4)](../package.r4.tgz) and [R4B (hl7.fhir.be.core-clinical.r4b)](../package.r4b.tgz) are available. 

### Global Profiles

*There are no Global profiles defined*

### Expansion parameters

* Parameter: includeDesignations
  * Value: true
* Parameter: system-version
  * Value: [SCT BE vhttp://snomed.info/sct/11000172109/version/20260515](http://snomed.info/sct/11000172109/version/20260515)

### Intellectual Property

This publication includes IP covered under the following statements.

* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BeExtBodyTopography](StructureDefinition-be-ext-body-topography.md), [BeExtLaterality](StructureDefinition-be-ext-laterality.md)... Show 10 more, [BeModelProblem](StructureDefinition-BeModelProblem.md), [BeProblem](StructureDefinition-be-problem.md), [BeScoreResult](StructureDefinition-be-scoreresult.md), [BeVSBodySite](ValueSet-be-vs-bodysite.md), [BeVSBodyTopography](ValueSet-be-vs-body-topography.md), [BeVSLaterality](ValueSet-be-vs-laterality.md), [BeVSReactionManifestationCode](ValueSet-be-vs-reaction-manifestation-code.md), [BeVSScore](ValueSet-be-vs-score.md), [BeVSSeverity](ValueSet-be-vs-severity.md) and [ProblemDiseaseCourseVS](ValueSet-ProblemDiseaseCourseVS.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Condition Clinical Status Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-clinical.html): [BeModelProblem](StructureDefinition-BeModelProblem.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.3.0/CodeSystem-condition-ver-status.html): [BeModelProblem](StructureDefinition-BeModelProblem.md)


