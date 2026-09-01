# MII EXA Kardio MRS - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio MRS**

## Beispiel Observation: MII EXA Kardio MRS

Language: de

Profile: [MII PR Kardio Score Modifizierte Rankin Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.md)

**identifier**: `http://demo.org/observation-ids`/MRS-OBS-123457

**status**: Final

**category**: Survey

**code**: Modified Rankin Scale score

**subject**: Beispielpatient

**encounter**: Beispielfall

**effective**: 2024-11-12 14:23:00+0100

**issued**: 2024-11-12 15:00:00+0100

**performer**: Beispielkardiologe

**value**: Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)

**note**: 

> 

Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-mrs",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-modifizierte-rankin-skala"]
  },
  "language" : "de",
  "identifier" : [{
    "system" : "http://demo.org/observation-ids",
    "value" : "MRS-OBS-123457"
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
      "code" : "1255866005",
      "display" : "Modified Rankin Scale score"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "75859-9",
      "display" : "Modified rankin scale"
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
    "display" : "Beispielkardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-modifizierte-rankin-skala",
      "version" : "2027.0.0-ballot.rc1",
      "code" : "mRSbigger3",
      "display" : "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
    }]
  },
  "note" : [{
    "text" : "Die Einstufung auf der mRS-Skala liegt bei mehr als 3 (Patient kann nicht ohne fremde Hilfe gehen)"
  }]
}

```
