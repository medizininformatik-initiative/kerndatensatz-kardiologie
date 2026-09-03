# MII EXA Kardio EKG Referenz - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG Referenz**

## Beispiel DocumentReference: MII EXA Kardio EKG Referenz



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-kardio-ekg-referenz",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz"]
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
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11524-6",
      "display" : "EKG study"
    }]
  },
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "date" : "2025-07-17T16:41:22+02:00",
  "author" : [{
    "reference" : "Device/mii-exa-kardio-ekg-geraet-mortara"
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "application/dicom",
      "url" : "https://example.com/EKGs/beispiel-ekg",
      "title" : "Beispiel EKG an einem anteren Ort"
    }
  }]
}

```
