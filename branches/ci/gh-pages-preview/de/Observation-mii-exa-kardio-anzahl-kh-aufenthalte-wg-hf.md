# MII EXA Kardio Anzahl KH Aufenthalte WG HF - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Anzahl KH Aufenthalte WG HF**

## Beispiel Observation: MII EXA Kardio Anzahl KH Aufenthalte WG HF



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-anzahl-kh-aufenthalte-wg-hf",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf"]
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
  }],
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
    "reference" : "#Beispielpatient"
  },
  "effectivePeriod" : {
    "start" : "2024-05-21",
    "end" : "2025-05-20"
  },
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "valueInteger" : 3,
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
