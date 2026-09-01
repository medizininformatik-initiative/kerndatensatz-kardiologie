# MII EXA Kardio Emoblischer Gefäßverschluss - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Emoblischer Gefäßverschluss**

## Beispiel Condition: MII EXA Kardio Emoblischer Gefäßverschluss

Language: de

Profile: [MII PR Kardio Diagnose](StructureDefinition-mii-pr-kardio-diagnose.md)

**Condition Asserted Date**: 2025-02-02

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: Embolischer Gefäßverschluss cerebro-vaskulär

**subject**: Max Mustermann

**onset**: 2024-11-05

**recordedDate**: 2025-02-02

**recorder**: Patient

**asserter**: Facharzt für Kardiologie



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-kardio-embolischer-gefaessverschluss",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose"]
  },
  "language" : "de",
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
    "display" : "Max Mustermann"
  },
  "onsetDateTime" : "2024-11-05",
  "recordedDate" : "2025-02-02",
  "recorder" : {
    "display" : "Patient"
  },
  "asserter" : {
    "display" : "Facharzt für Kardiologie"
  }
}

```
