# MII EXA Kardio Score NYHA II - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Score NYHA II**

## Beispiel Observation: MII EXA Kardio Score NYHA II



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-score-nyha-ii",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-score-nyha"]
  },
  "language" : "de",
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "Beispielpatient",
    "language" : "de-DE",
    "identifier" : [{
      "use" : "usual",
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "version" : "5.0.0",
          "code" : "MR",
          "display" : "Krankenaktennummer"
        }]
      },
      "value" : "0123456789"
    }],
    "name" : [{
      "use" : "official",
      "family" : "Mustermann",
      "given" : ["Max"]
    }],
    "gender" : "male",
    "birthDate" : "1980-01-01",
    "address" : [{
      "type" : "both",
      "line" : ["Musterstraße 1"],
      "city" : "Musterstadt",
      "postalCode" : "12345",
      "country" : "DE"
    }]
  },
  {
    "resourceType" : "Encounter",
    "id" : "Beispielfall",
    "language" : "de-DE",
    "status" : "finished",
    "class" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "version" : "10.0.0",
      "code" : "IMP"
    },
    "subject" : {
      "reference" : "#Beispielpatient"
    },
    "period" : {
      "start" : "2023-12-01T10:00:00+01:00",
      "end" : "2023-12-03T11:00:00+01:00"
    }
  }],
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
    "reference" : "#Beispielpatient"
  },
  "encounter" : {
    "reference" : "#Beispielfall"
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
