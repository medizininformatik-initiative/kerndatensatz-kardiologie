# MII EXA Kardio Herzinsuffizienz Unbekannt - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Herzinsuffizienz Unbekannt**

## Beispiel Observation: MII EXA Kardio Herzinsuffizienz Unbekannt



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-herzinsuffizienz-unbekannt",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt"]
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
      "code" : "survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "84114007",
      "display" : "Heart failure"
    }]
  },
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "effectiveDateTime" : "2025-06-06T14:29:34.214+02:00",
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "version" : "3.0.0",
      "code" : "ASKU",
      "display" : "gefragt, aber nicht genannt"
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
