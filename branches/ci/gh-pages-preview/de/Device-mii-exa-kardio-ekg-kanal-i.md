# MII EXA Kardio EKG Kanal I - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG Kanal I**

## Beispiel Device: MII EXA Kardio EKG Kanal I

Language: de

Profile: [MII PR Kardio EKG Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.md)

**status**: Active

**type**: MDC_DEV_ECG_CHAN

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **ValueCode** |
| * | MDC_ATTR_CHAN_NUM_LOGICAL | MDC_ECG_LEAD_I |

**parent**: [Device: status = active; manufacturer = Mortara Instrument, Inc.; type = MDC_DEV_ECG_MDS](Device-mii-exa-kardio-ekg-geraet-mortara.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-kardio-ekg-kanal-i",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal"]
  },
  "language" : "de",
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "69799",
      "display" : "MDC_DEV_ECG_CHAN"
    }]
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:11073:10101",
        "version" : "2024-12-05",
        "code" : "68142",
        "display" : "MDC_ATTR_CHAN_NUM_LOGICAL"
      }]
    },
    "valueCode" : [{
      "coding" : [{
        "system" : "urn:iso:std:iso:11073:10101",
        "version" : "2024-12-05",
        "code" : "131073",
        "display" : "MDC_ECG_LEAD_I"
      }]
    }]
  }],
  "parent" : {
    "reference" : "Device/mii-exa-kardio-ekg-geraet-mortara"
  }
}

```
