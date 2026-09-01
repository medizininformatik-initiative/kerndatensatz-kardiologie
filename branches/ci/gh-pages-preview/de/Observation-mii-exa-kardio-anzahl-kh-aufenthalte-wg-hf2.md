# MII EXA Kardio Anzahl KH Aufenthalte WG HF (mit Angabe 'Weiß nicht') - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Anzahl KH Aufenthalte WG HF (mit Angabe 'Weiß nicht')**

## Beispiel Observation: MII EXA Kardio Anzahl KH Aufenthalte WG HF (mit Angabe 'Weiß nicht')

Language: de

Profile: [MII PR Kardio Anzahl KH Aufenthalte wg HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.md)

**status**: Final

**code**: Number of admissions

**subject**: Beispielpatient

**effective**: 2025-05-21 --> 2026-05-20

**performer**: Beispielkardiologe

**value**: unbekannt

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Reason for visit diagnosis | Heart failure |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf2",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf"]
  },
  "language" : "de",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "298060002",
      "display" : "Number of admissions"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "effectivePeriod" : {
    "start" : "2025-05-21",
    "end" : "2026-05-20"
  },
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "code" : "UNK",
      "display" : "unbekannt"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "406524005",
        "display" : "Reason for visit diagnosis"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "84114007",
        "display" : "Heart failure"
      }]
    }
  }]
}

```
