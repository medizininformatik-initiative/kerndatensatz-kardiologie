# MII EXA Kardio Kein Device - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Kein Device**

## Beispiel Observation: MII EXA Kardio Kein Device

Language: de

Profile: [MII PR Kardio Diagnose Prozedur Nein Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md)

**status**: Final

**category**: Survey

**code**: Cardiac implant in situ

**subject**: Beispielpatient

**effective**: 2025-11-13 18:06:34+0100

**performer**: Beispielkardiologe

**value**: Nein

**method**: History taking - action

**device**: Beispieltablet

**derivedFrom**: Beispielfragebogen



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-kein-device",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt"]
  },
  "language" : "de",
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "703398004",
      "display" : "Cardiac implant in situ"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "effectiveDateTime" : "2025-11-13T18:06:34.214+01:00",
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "code" : "N",
      "display" : "Nein"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "129431000",
      "display" : "History taking - action"
    }]
  },
  "device" : {
    "display" : "Beispieltablet"
  },
  "derivedFrom" : [{
    "display" : "Beispielfragebogen"
  }]
}

```
