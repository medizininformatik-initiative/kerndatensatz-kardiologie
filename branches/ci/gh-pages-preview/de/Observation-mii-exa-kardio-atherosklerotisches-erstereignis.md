# MII EXA Kardio Atherosklerotisches Erstereignis - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Atherosklerotisches Erstereignis**

## Beispiel Observation: MII EXA Kardio Atherosklerotisches Erstereignis



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-atherosklerotisches-erstereignis",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-atherosklerotisches-erstereignis"]
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
      "version" : "2027.0.0-ballot.rc1",
      "code" : "ae",
      "display" : "Atherosklerotisches Ereignis"
    }]
  },
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "effectiveDateTime" : "2025-05-23T13:48:17+02:00",
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
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
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "432213005",
        "display" : "Date of diagnosis"
      }]
    },
    "valueDateTime" : "2023-01"
  }]
}

```
