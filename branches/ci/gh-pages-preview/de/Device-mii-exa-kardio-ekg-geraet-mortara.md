# MII EXA Kardio EKG Geraet Mortara - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG Geraet Mortara**

## Beispiel Device: MII EXA Kardio EKG Geraet Mortara

Language: de

Profile: [MII PR Kardio EKG Gerät](StructureDefinition-mii-pr-kardio-ekg-geraet.md)

**definition**: [DeviceDefinition: manufacturer[x] = Mortara Instrument, Inc.; onlineInformation = https://www.hillrom.de/de/products/eli-380-electrocardiograph/](DeviceDefinition-mii-exa-kardio-ekg-geraetedefinition-mortara.md)

**status**: Active

**manufacturer**: Mortara Instrument, Inc.

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | ELI 380 | Model name |

**type**: MDC_DEV_ECG_MDS



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-kardio-ekg-geraet-mortara",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet"]
  },
  "language" : "de",
  "definition" : {
    "reference" : "DeviceDefinition/mii-exa-kardio-ekg-geraetedefinition-mortara"
  },
  "status" : "active",
  "manufacturer" : "Mortara Instrument, Inc.",
  "deviceName" : [{
    "name" : "ELI 380",
    "type" : "model-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "69797",
      "display" : "MDC_DEV_ECG_MDS"
    },
    {
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "69798",
      "display" : "MDC_DEV_ECG_VMD"
    }]
  }
}

```
