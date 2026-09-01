# MII EXA Kardio EKG RR Interval - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG RR Interval**

## Beispiel Observation: MII EXA Kardio EKG RR Interval

Language: de

Profile: [MII PR Kardio EKG Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.md)

**status**: Final

**category**: Vital Signs

**code**: MDC_ECG_TIME_PD_RR_GL

**subject**: Beispielpatient

**effective**: 2023-05-03 07:38:07+0000 --> 2023-05-03 07:38:17+0000

**performer**: Kardiologe

**value**: 1000 millisecond (Details: UCUM codems = 'ms')

**device**: [Device: status = active; manufacturer = Mortara Instrument, Inc.; type = MDC_DEV_ECG_MDS](Device-mii-exa-kardio-ekg-geraet-mortara.md)

**derivedFrom**: [DocumentReference: status = current; type = EKG study; date = 2025-07-17 16:41:22+0200](DocumentReference-mii-exa-kardio-ekg-referenz.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-ekg-rr-interval",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation"]
  },
  "language" : "de",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "version" : "2024-12-05",
      "code" : "147240",
      "display" : "MDC_ECG_TIME_PD_RR_GL"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "effectivePeriod" : {
    "start" : "2023-05-03T07:38:07Z",
    "end" : "2023-05-03T07:38:17Z"
  },
  "performer" : [{
    "display" : "Kardiologe"
  }],
  "valueQuantity" : {
    "value" : 1000,
    "unit" : "millisecond",
    "system" : "http://unitsofmeasure.org",
    "code" : "ms"
  },
  "device" : {
    "reference" : "Device/mii-exa-kardio-ekg-geraet-mortara"
  },
  "derivedFrom" : [{
    "reference" : "DocumentReference/mii-exa-kardio-ekg-referenz"
  }]
}

```
