# Device Logical Model - Clinical Core v1.1.0

## Logical Model: Device Logical Model 

 
Logical model for a medical device 

### Relationship with other elements:

The Device model relates to the other data structures in the following way:

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.core-clinical|current/StructureDefinition/BeModelDevice)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelDevice.csv), [Excel](../StructureDefinition-BeModelDevice.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelDevice",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelDevice",
  "version" : "1.1.0",
  "name" : "BeModelDevice",
  "title" : "Device Logical Model",
  "status" : "active",
  "date" : "2026-05-05T08:40:14+00:00",
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
  "description" : "Logical model for a medical device",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/BeModelDevice",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelDevice",
      "path" : "BeModelDevice",
      "short" : "Device Logical Model",
      "definition" : "Logical model for a medical device"
    },
    {
      "id" : "BeModelDevice.owner",
      "path" : "BeModelDevice.owner",
      "short" : "Owner",
      "definition" : "Organization responsible for the device",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "BeModelDevice.patient",
      "path" : "BeModelDevice.patient",
      "short" : "Patient",
      "definition" : "Patient in whom the device is implanted or for whom it is used",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "BeModelDevice.udiCarrier",
      "path" : "BeModelDevice.udiCarrier",
      "short" : "UDI Carrier",
      "definition" : "The Unique Device Identifier (UDI), usually captured by scanning a barcode or RFID label, enabling unique identification of the exact device (manufacturer, type, lot number, serial number, expiration date, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelDevice.udiCarrier.deviceIdentifier",
      "path" : "BeModelDevice.udiCarrier.deviceIdentifier",
      "short" : "Device Identifier",
      "definition" : "The device identifier (DI) portion of the UDI",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.udiCarrier.carrierHRF",
      "path" : "BeModelDevice.udiCarrier.carrierHRF",
      "short" : "Carrier HRF",
      "definition" : "Human-readable form of the UDI",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.identifier",
      "path" : "BeModelDevice.identifier",
      "short" : "Identifier",
      "definition" : "Alternative identifier when no UDI is available, e.g. a NIHDI notification number or other alternative identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelDevice.status",
      "path" : "BeModelDevice.status",
      "short" : "Status",
      "definition" : "Status of the device (active, inactive, entered-in-error, unknown)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-status"
      }
    },
    {
      "id" : "BeModelDevice.statusReason",
      "path" : "BeModelDevice.statusReason",
      "short" : "Status Reason",
      "definition" : "Reason why the device has a particular status, e.g. why it is inactive or out of service",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-status-reason"
      }
    },
    {
      "id" : "BeModelDevice.type",
      "path" : "BeModelDevice.type",
      "short" : "Type",
      "definition" : "The kind of medical device, e.g. SNOMED CT code 304120007 - Cardiac pacemaker, device (physical object)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/terminology/ValueSet/be-vs-device-type"
      }
    },
    {
      "id" : "BeModelDevice.deviceDefinition",
      "path" : "BeModelDevice.deviceDefinition",
      "short" : "Device Definition",
      "definition" : "Reference to the generic definition of the device, describing general characteristics of the device type rather than the unique instance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelDevice.manufacturer",
      "path" : "BeModelDevice.manufacturer",
      "short" : "Manufacturer",
      "definition" : "The manufacturer that produced the device, e.g. Medtronic",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.manufactureDate",
      "path" : "BeModelDevice.manufactureDate",
      "short" : "Manufacture Date",
      "definition" : "The date the device was manufactured",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelDevice.expirationDate",
      "path" : "BeModelDevice.expirationDate",
      "short" : "Expiration Date",
      "definition" : "The date after which the device may no longer be used",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelDevice.lotNumber",
      "path" : "BeModelDevice.lotNumber",
      "short" : "Lot Number",
      "definition" : "The lot or batch number in which the device was produced",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.version",
      "path" : "BeModelDevice.version",
      "short" : "Version",
      "definition" : "The actual version of the device or the software version running on it",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.serialNumber",
      "path" : "BeModelDevice.serialNumber",
      "short" : "Serial Number",
      "definition" : "A unique identification code assigned by the manufacturer to one specific device",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.deviceName",
      "path" : "BeModelDevice.deviceName",
      "short" : "Device Name",
      "definition" : "The name of the medical device as determined by the manufacturer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.modelNumber",
      "path" : "BeModelDevice.modelNumber",
      "short" : "Model Number",
      "definition" : "The model number of the device as assigned by the manufacturer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelDevice.property",
      "path" : "BeModelDevice.property",
      "short" : "Property",
      "definition" : "The actual configuration settings of a device as it operates, e.g. regulation status or time properties",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BeModelDevice.property.type",
      "path" : "BeModelDevice.property.type",
      "short" : "Property Type",
      "definition" : "Code that specifies the property",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelDevice.property.value[x]",
      "path" : "BeModelDevice.property.value[x]",
      "short" : "Property Value",
      "definition" : "Value of the property",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "boolean"
      },
      {
        "code" : "integer"
      },
      {
        "code" : "Range"
      },
      {
        "code" : "Attachment"
      }]
    },
    {
      "id" : "BeModelDevice.note",
      "path" : "BeModelDevice.note",
      "short" : "Note",
      "definition" : "General notes about the device",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    }]
  }
}

```
