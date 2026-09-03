# MII EXA Kardio EKG RR Interval - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG RR Interval**

## Beispiel Observation: MII EXA Kardio EKG RR Interval



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-ekg-rr-interval",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation"]
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
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "version" : "2.0.0",
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
    "reference" : "#Beispielpatient"
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
