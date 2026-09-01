# MII Kardio Diagnose Myokardinfarkt - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Kardio Diagnose Myokardinfarkt**

## Beispiel Condition: MII Kardio Diagnose Myokardinfarkt

Language: de

Profile: [MII PR Kardio Diagnose](StructureDefinition-mii-pr-kardio-diagnose.md)

**Condition Asserted Date**: 2023-11-05

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: Akuter Myokardinfarkt, nicht näher bezeichnet

**subject**: Max Mustermann

**onset**: 2023-11-05

**recordedDate**: 2025-05-13

**recorder**: Patient

**asserter**: Facharzt für Kardiologie



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-kardio-diagnose-myokardinfarkt",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2023-11-05"
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
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2025",
      "code" : "I21.9",
      "display" : "Akuter Myokardinfarkt, nicht näher bezeichnet"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "22298006",
      "display" : "Myocardial infarction"
    }]
  },
  "subject" : {
    "display" : "Max Mustermann"
  },
  "onsetDateTime" : "2023-11-05",
  "recordedDate" : "2025-05-13",
  "recorder" : {
    "display" : "Patient"
  },
  "asserter" : {
    "display" : "Facharzt für Kardiologie"
  }
}

```
