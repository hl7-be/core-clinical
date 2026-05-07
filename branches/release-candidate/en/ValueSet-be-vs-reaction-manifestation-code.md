# Reaction Manifestation Code - Clinical Core v1.2.0

## ValueSet: Reaction Manifestation Code 

 
Reaction Manifestation Code (Allergy - Immunization) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "be-vs-reaction-manifestation-code",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 1
  }],
  "url" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-reaction-manifestation-code",
  "version" : "1.2.0",
  "name" : "BeVSReactionManifestationCode",
  "title" : "Reaction Manifestation Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-07T07:13:57+00:00",
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
  "description" : "Reaction Manifestation Code (Allergy - Immunization)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "39579001"
      },
      {
        "code" : "735173007"
      },
      {
        "code" : "41291007"
      },
      {
        "code" : "410430005"
      },
      {
        "code" : "698247007"
      },
      {
        "code" : "195967001"
      },
      {
        "code" : "4386001"
      },
      {
        "code" : "9826008"
      },
      {
        "code" : "91175000"
      },
      {
        "code" : "40275004"
      },
      {
        "code" : "62315008"
      },
      {
        "code" : "267036007"
      },
      {
        "code" : "43116000"
      },
      {
        "code" : "271759003"
      },
      {
        "code" : "247472004"
      },
      {
        "code" : "271807003"
      },
      {
        "code" : "271757001"
      },
      {
        "code" : "297942002"
      },
      {
        "code" : "76067001"
      },
      {
        "code" : "386661006"
      },
      {
        "code" : "45007003"
      },
      {
        "code" : "422587007"
      },
      {
        "code" : "768962006"
      },
      {
        "code" : "51599000"
      },
      {
        "code" : "23924001"
      },
      {
        "code" : "418363000"
      },
      {
        "code" : "70076002"
      },
      {
        "code" : "162290004"
      },
      {
        "code" : "73442001"
      },
      {
        "code" : "49727002"
      },
      {
        "code" : "126485001"
      },
      {
        "code" : "31996006"
      },
      {
        "code" : "1985008"
      }]
    }]
  }
}

```
