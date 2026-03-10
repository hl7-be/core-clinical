
This is the Belgian Core Clinical FHIR Implementation Guide. It contains the clinical specifications developed by our community that can be reused in other implementation guides.

### Content

This IG is structured in the following content sections:

**Background:** Information about the specifications, or what you should know to be able to best navigate and use these specifications. Contains a general introduction to the publication structure and content, the artefact types, common privacy and security specifications and the official HL7 FHIR release that this specification is based upon.

**Functional Description:** Functional content, more relevant for business or functional analysts, as well as health professionals. Contains the context around these specifications (relevant projects, legal and implementation aspects), the interoperability actors and transactions, and especially the use cases that have been considered in the specification and the logical data models – the functional (i.e. non-technical) data sets that are used in data exchange.

**Detailed Specifications:** The actual technical specifications – the FHIR conformance resources that are defined in this specification – profiles, data types, capability statements. This is targeted at (technical) implementers.

**Terminology:** The vocabulary resources – Naming Systems, Code Systems and Value Sets, which support semantic interoperability. These resources define the use of standard terminologies (e.g. LOINC, SNOMED-CT) or internal codes for Belgium, e.g. official codes for Civil Status).

The top menu allows quick navigation to the different sections, and a [Table of Contents](toc.html) is provided with the entire content of this Implementation Guide. (Be aware that some pages have multiple tabs).

### Dependencies
This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% capture cross-version-analysis %}{% include cross-version-analysis.xhtml %}{% endcapture %}{{ cross-version-analysis | remove: '<p>' | remove: '</p>'}}

### Global Profiles

{% include globals-table.xhtml %}

### Intellectual Property

{% include ip-statements.xhtml %}
