# MII EXA Kardio Emoblischer Gefäßverschluss - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Emoblischer Gefäßverschluss**

## Beispiel Condition: MII EXA Kardio Emoblischer Gefäßverschluss



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-kardio-embolischer-gefaessverschluss",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose"]
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
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2025-02-02"
  }],
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
      "version" : "2027.0.0-ballot.rc1",
      "code" : "eg-cv",
      "display" : "Embolischer Gefäßverschluss cerebro-vaskulär"
    }]
  },
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "onsetDateTime" : "2024-11-05",
  "recordedDate" : "2025-02-02",
  "recorder" : {
    "reference" : "#Beispielpatient"
  },
  "asserter" : {
    "display" : "Facharzt für Kardiologie"
  }
}

```
