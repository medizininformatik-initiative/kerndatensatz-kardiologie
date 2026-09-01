# MII EXA Kardio Geräteprogrammierung VVI - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Geräteprogrammierung VVI**

## Beispiel Observation: MII EXA Kardio Geräteprogrammierung VVI

Language: de

Profile: [MII PR Kardio Geräteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.md)

**status**: Final

**code**: The brady pacing mode according to the NBG standard

**subject**: [Device: status = active; manufacturer = Medtronic; type = Implantable defibrillator](Device-mii-exa-kardio-device-icd.md)

**focus**: [DeviceMetric: type = MDC_IDC_SET_BRADY_MODE; category = setting](DeviceMetric-mii-exa-kardio-nbg-schrittmachermodus.md)

**effective**: 2025-05-14 14:33:12+0200

**performer**: Beipielarzt

**value**: MDC_IDC_ENUM_BRADY_MODE_VVI



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-geraeteprogrammierung-vvi",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-geraeteprogrammierung"]
  },
  "language" : "de",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "730752",
      "display" : "MDC_IDC_SET_BRADY_MODE"
    }],
    "text" : "The brady pacing mode according to the NBG standard"
  },
  "subject" : {
    "reference" : "Device/mii-exa-kardio-device-icd"
  },
  "focus" : [{
    "reference" : "DeviceMetric/mii-exa-kardio-nbg-schrittmachermodus"
  }],
  "effectiveDateTime" : "2025-05-14T14:33:12+02:00",
  "performer" : [{
    "display" : "Beipielarzt"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "754773",
      "display" : "MDC_IDC_ENUM_BRADY_MODE_VVI"
    }]
  }
}

```
