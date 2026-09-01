# MII EXA Kardio Score NYHA II - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Score NYHA II**

## Beispiel Observation: MII EXA Kardio Score NYHA II

Language: de

Profile: [MII PR Kardio Score NYHA](StructureDefinition-mii-pr-kardio-score-nyha.md)

**identifier**: `http://demo.org/observation-ids`/NYHA-OBS-123456

**status**: Final

**category**: Survey

**code**: New York Heart Association Classification class

**subject**: Beispielpatient

**encounter**: Beispielfall

**effective**: 2024-11-12 14:23:00+0100

**issued**: 2024-11-12 15:00:00+0100

**performer**: [PractitionerRole Cardiologist](PractitionerRole-mii-exa-kardio-rolle-kardiologe.md)

**value**: New York Heart Association Classification - Class II

**note**: 

> 

Patient berichtet über leichte Einschränkungen bei moderater körperlicher Aktivität. Keine Beschwerden in Ruhe.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-score-nyha-ii",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-nyha"]
  },
  "language" : "de",
  "identifier" : [{
    "system" : "http://demo.org/observation-ids",
    "value" : "NYHA-OBS-123456"
  }],
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
      "code" : "762994006",
      "display" : "New York Heart Association Classification class"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "93124-6",
      "display" : "New York Heart Association Functional Classification panel"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "encounter" : {
    "display" : "Beispielfall"
  },
  "effectiveDateTime" : "2024-11-12T14:23:00+01:00",
  "issued" : "2024-11-12T15:00:00+01:00",
  "performer" : [{
    "reference" : "PractitionerRole/mii-exa-kardio-rolle-kardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "421704003",
      "display" : "New York Heart Association Classification - Class II"
    }]
  },
  "note" : [{
    "text" : "Patient berichtet über leichte Einschränkungen bei moderater körperlicher Aktivität. Keine Beschwerden in Ruhe."
  }]
}

```
