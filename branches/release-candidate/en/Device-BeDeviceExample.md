# Device Example - Clinical Core v1.4.0

## Example Device: Device Example

Profile: [BeDevice](StructureDefinition-be-device.md)

**identifier**: `http://example.org/devices`/DEVICE-001

**status**: Active

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Example Medical Device | User Friendly name |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "BeDeviceExample",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core-clinical/StructureDefinition/be-device"]
  },
  "identifier" : [{
    "system" : "http://example.org/devices",
    "value" : "DEVICE-001"
  }],
  "status" : "active",
  "deviceName" : [{
    "name" : "Example Medical Device",
    "type" : "user-friendly-name"
  }]
}

```
