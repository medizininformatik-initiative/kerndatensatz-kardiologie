# MII EXA Kardio Atherosklerotisches Erstereignis - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Atherosklerotisches Erstereignis**

## Beispiel Observation: MII EXA Kardio Atherosklerotisches Erstereignis

Language: de

Profile: [MII PR Kardio Atherosklerotisches Erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.md)

**status**: Final

**code**: Atherosklerotisches Ereignis

**subject**: Beispielpatient

**effective**: 2025-05-23 13:48:17+0200

**performer**: Beispielkardiologe

> **component****code**: Diagnosis**value**: Atherosklerotisches Ereignis

> **component****code**: Date of diagnosis**value**: 2023-01



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-atherosklerotisches-erstereignis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-atherosklerotisches-erstereignis"]
  },
  "language" : "de",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
      "version" : "2027.0.0-ballot.rc1",
      "code" : "ae",
      "display" : "Atherosklerotisches Ereignis"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "effectiveDateTime" : "2025-05-23T13:48:17+02:00",
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "439401001",
        "display" : "Diagnosis"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
        "version" : "2027.0.0-ballot.rc1",
        "code" : "ae",
        "display" : "Atherosklerotisches Ereignis"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "432213005",
        "display" : "Date of diagnosis"
      }]
    },
    "valueDateTime" : "2023-01"
  }]
}

```
