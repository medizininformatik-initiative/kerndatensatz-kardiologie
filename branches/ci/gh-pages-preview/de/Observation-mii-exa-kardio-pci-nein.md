# MII EXA Kardio PCI/Stent Nein - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio PCI/Stent Nein**

## Beispiel Observation: MII EXA Kardio PCI/Stent Nein

Language: de

Profile: [MII PR Kardio Diagnose Prozedur Nein Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md)

**status**: Final

**category**: Survey

**code**: Koronarintervention mit PCI/Stent

**subject**: Beispielpatient

**effective**: 2025-06-06 14:29:34+0200

**performer**: Beispielkardiologe

**value**: Nein

**method**: History taking - action

**device**: Beispieltablet

**derivedFrom**: Beispielfragebogen



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-pci-nein",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt"]
  },
  "language" : "de",
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
      "code" : "415070008",
      "display" : "Percutaneous coronary intervention"
    }],
    "text" : "Koronarintervention mit PCI/Stent"
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "effectiveDateTime" : "2025-06-06T14:29:34.214+02:00",
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "code" : "N",
      "display" : "Nein"
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
