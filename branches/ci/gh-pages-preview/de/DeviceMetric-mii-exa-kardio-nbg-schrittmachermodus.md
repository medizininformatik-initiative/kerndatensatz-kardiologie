# MII EXA Kardio NBG Schrittmachermodus - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio NBG Schrittmachermodus**

## Beispiel DeviceMetric: MII EXA Kardio NBG Schrittmachermodus

Language: de

Profile: [MII PR Kardio NBG Schrittmachermodus](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.md)

**type**: The brady pacing mode according to the NBG standard.

**source**: [Device: status = active; manufacturer = Medtronic; type = Implantable defibrillator](Device-mii-exa-kardio-device-icd.md)

**category**: Setting



## Resource Content

```json
{
  "resourceType" : "DeviceMetric",
  "id" : "mii-exa-kardio-nbg-schrittmachermodus",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus"]
  },
  "language" : "de",
  "type" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "730752",
      "display" : "MDC_IDC_SET_BRADY_MODE"
    }],
    "text" : "The brady pacing mode according to the NBG standard."
  },
  "source" : {
    "reference" : "Device/mii-exa-kardio-device-icd"
  },
  "category" : "setting"
}

```
