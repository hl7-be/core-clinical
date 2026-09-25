# Transversal Clinical Core - Clinical Core v1.1.0

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

### Intellectual Property

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [BeCSBodySite](CodeSystem-be-cs-bodysite.md), [BeCSProblemCategory](CodeSystem-be-cs-problem-category.md)... Show 43 more, [BeCSProblemOriginType](CodeSystem-be-cs-problem-origin-type.md), [BeCSScore](CodeSystem-be-cs-score.md), [BeCSScoreCategory](CodeSystem-be-cs-score-category.md), [BeClinicalObservation](StructureDefinition-be-clinical-observation.md), [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md), [BeExtBodyTopography](StructureDefinition-be-ext-body-topography.md), [BeExtLaterality](StructureDefinition-be-ext-laterality.md), [BeExtProblemOriginType](StructureDefinition-be-ext-problem-origin-type.md), [BeExtRecordedDate](StructureDefinition-BeExtRecordedDate.md), [BeExtSurgicalApproach](StructureDefinition-be-ext-surgical-approach.md), [BeModelBodySite](StructureDefinition-BeModelBodySite.md), [BeModelClinicalObservation](StructureDefinition-BeModelClinicalObservation.md), [BeModelDiagnosticReportDiabetes](StructureDefinition-BeModelDiagnosticReportDiabetes.md), [BeModelObservationDiabetes](StructureDefinition-BeModelObservationDiabetes.md), [BeModelProblem](StructureDefinition-BeModelProblem.md), [BeModelProcedure](StructureDefinition-BeModelProcedure.md), [BeNSDiabetesDeviceType](NamingSystem-be-ns-diabetes-device-type.md), [BeNSDiagnosticReportDiabetes](NamingSystem-be-ns-diagnostic-report-diabetes.md), [BeNSObservationDiabetes](NamingSystem-be-ns-observation-diabetes.md), [BeObservation](StructureDefinition-be-observation.md), [BeObservationCodeableConcept](StructureDefinition-be-observationcodeableconcept.md), [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md), [BeProblem](StructureDefinition-be-problem.md), [BeProcedure](StructureDefinition-be-procedure.md), [BeScoreResult](StructureDefinition-be-scoreresult.md), [BeVSBodySite](ValueSet-be-vs-bodysite.md), [BeVSBodyTopography](ValueSet-be-vs-body-topography.md), [BeVSDiabetesObservationCategory](ValueSet-be-vs-diabetes-observation-category.md), [BeVSDiabetesObservationCode](ValueSet-be-vs-diabetes-observation-code.md), [BeVSDiabetesReportCategory](ValueSet-be-vs-diabetes-report-category.md), [BeVSDiabetesReportStatus](ValueSet-be-vs-diabetes-report-status.md), [BeVSLaterality](ValueSet-be-vs-laterality.md), [BeVSProblemCategory](ValueSet-be-vs-problem-category.md), [BeVSProblemCode](ValueSet-be-vs-problem-code.md), [BeVSProblemOriginType](ValueSet-be-vs-problem-origin-type.md), [BeVSReactionManifestationCode](ValueSet-be-vs-reaction-manifestation-code.md), [BeVSScore](ValueSet-be-vs-score.md), [BeVSScoreCategory](ValueSet-be-vs-scorecategory.md), [BeVSSeverity](ValueSet-be-vs-severity.md), [ProblemCategoryVS](ValueSet-ProblemCategoryVS.md), [ProblemCodeVS](ValueSet-ProblemCodeVS.md), [ProblemDiseaseCourseVS](ValueSet-ProblemDiseaseCourseVS.md) and [TransversalClinicalCore](index.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [Observation/397dffb4-a88a-47d0-b10d-beffcbf6157d](Observation-397dffb4-a88a-47d0-b10d-beffcbf6157d.md)... Show 7 more, [Observation/449a728d-dfb4-422d-94aa-1a2d43849ee5](Observation-449a728d-dfb4-422d-94aa-1a2d43849ee5.md), [Observation/454a29d0-0893-458a-b2e5-25452b89e29a](Observation-454a29d0-0893-458a-b2e5-25452b89e29a.md), [Observation/6756477d-b57a-4611-b048-374d46f52908](Observation-6756477d-b57a-4611-b048-374d46f52908.md), [Observation/a6665182-e11a-40a9-ae83-9b093a353f16](Observation-a6665182-e11a-40a9-ae83-9b093a353f16.md), [Observation/b28ef33b-0480-4bde-a5df-94988813110b](Observation-b28ef33b-0480-4bde-a5df-94988813110b.md), [Observation/b44fe5d5-f57b-4424-b628-d2baeb447738](Observation-b44fe5d5-f57b-4424-b628-d2baeb447738.md) and [Observation/c611b58d-27bb-49e2-b3ec-bd59e986f5f3](Observation-c611b58d-27bb-49e2-b3ec-bd59e986f5f3.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BeDiagnosticReportDiabetes](StructureDefinition-be-diagnostic-report-diabetes.md), [BeExtBodyTopography](StructureDefinition-be-ext-body-topography.md)... Show 29 more, [BeExtLaterality](StructureDefinition-be-ext-laterality.md), [BeModelProblem](StructureDefinition-BeModelProblem.md), [BeObservationDiabetes](StructureDefinition-be-observation-diabetes.md), [BeProblem](StructureDefinition-be-problem.md), [BeScoreResult](StructureDefinition-be-scoreresult.md), [BeVSBodySite](ValueSet-be-vs-bodysite.md), [BeVSBodyTopography](ValueSet-be-vs-body-topography.md), [BeVSDiabetesObservationCategory](ValueSet-be-vs-diabetes-observation-category.md), [BeVSDiabetesObservationCode](ValueSet-be-vs-diabetes-observation-code.md), [BeVSDiabetesReportCategory](ValueSet-be-vs-diabetes-report-category.md), [BeVSLaterality](ValueSet-be-vs-laterality.md), [BeVSReactionManifestationCode](ValueSet-be-vs-reaction-manifestation-code.md), [BeVSScore](ValueSet-be-vs-score.md), [BeVSSeverity](ValueSet-be-vs-severity.md), [Bundle/uc52-bundle](Bundle-uc52-bundle.md), [Bundle/uc53-bundle](Bundle-uc53-bundle.md), [Composition/uc52-composition](Composition-uc52-composition.md), [Composition/uc53-composition](Composition-uc53-composition.md), [DiagnosticReport/uc52-pdfonly](DiagnosticReport-uc52-pdfonly.md), [DiagnosticReport/uc53-pdf-derived](DiagnosticReport-uc53-pdf-derived.md), [Observation/397dffb4-a88a-47d0-b10d-beffcbf6157d](Observation-397dffb4-a88a-47d0-b10d-beffcbf6157d.md), [Observation/449a728d-dfb4-422d-94aa-1a2d43849ee5](Observation-449a728d-dfb4-422d-94aa-1a2d43849ee5.md), [Observation/454a29d0-0893-458a-b2e5-25452b89e29a](Observation-454a29d0-0893-458a-b2e5-25452b89e29a.md), [Observation/6756477d-b57a-4611-b048-374d46f52908](Observation-6756477d-b57a-4611-b048-374d46f52908.md), [Observation/a6665182-e11a-40a9-ae83-9b093a353f16](Observation-a6665182-e11a-40a9-ae83-9b093a353f16.md), [Observation/b28ef33b-0480-4bde-a5df-94988813110b](Observation-b28ef33b-0480-4bde-a5df-94988813110b.md), [Observation/b44fe5d5-f57b-4424-b628-d2baeb447738](Observation-b44fe5d5-f57b-4424-b628-d2baeb447738.md), [Observation/c611b58d-27bb-49e2-b3ec-bd59e986f5f3](Observation-c611b58d-27bb-49e2-b3ec-bd59e986f5f3.md) and [ProblemDiseaseCourseVS](ValueSet-ProblemDiseaseCourseVS.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Condition Clinical Status Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-clinical.html): [BeModelProblem](StructureDefinition-BeModelProblem.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.1.0/CodeSystem-condition-ver-status.html): [BeModelProblem](StructureDefinition-BeModelProblem.md)


