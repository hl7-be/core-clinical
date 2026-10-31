# BodySite Model - Clinical Core v1.4.0

## Logical Model: BodySite Model 

**Usages:**

* Use this Logical Model: [BeClinicalObservation Model](StructureDefinition-BeModelClinicalObservation.md), [DeviceUseStatement Logical Model](StructureDefinition-BeModelDeviceUseStatement.md) and [BeProcedure Model](StructureDefinition-BeModelProcedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.core-clinical|current/StructureDefinition/StructureDefinition-BeModelBodySite.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelBodySite.csv), [Excel](../StructureDefinition-BeModelBodySite.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelBodySite",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.200.5.42.1"
  }],
  "version" : "1.4.0",
  "name" : "BeModelBodySite",
  "title" : "BodySite Model",
  "status" : "active",
  "date" : "2026-10-16T06:59:25+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be"
    },
    {
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be"
    }]
  },
  {
    "name" : "Message-Structure",
    "telecom" : [{
      "system" : "email",
      "value" : "message-structure@www.ehealth.fgov.be",
      "use" : "work"
    }]
  }],
  "description" : "Body site model",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelBodySite",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelBodySite",
      "path" : "BeModelBodySite",
      "short" : "BodySite Model",
      "definition" : "Body site model"
    },
    {
      "id" : "BeModelBodySite.bodyLocation",
      "path" : "BeModelBodySite.bodyLocation",
      "short" : "Code that identifies the anatomical location of the specimen on the subject's body",
      "definition" : "Code that identifies the anatomical location of the specimen on the subject's body",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelBodySite.bodyLaterality",
      "path" : "BeModelBodySite.bodyLaterality",
      "short" : "The laterality of a body site - the side of the body",
      "definition" : "The laterality of a body site - the side of the body",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelBodySite.bodyTopography",
      "path" : "BeModelBodySite.bodyTopography",
      "short" : "The topography of the location of the specimen on the subject's body",
      "definition" : "The topography of the location of the specimen on the subject's body",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
