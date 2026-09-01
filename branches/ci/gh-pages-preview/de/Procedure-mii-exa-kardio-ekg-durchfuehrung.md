# MII EXA Kardio EKG Durchführung - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG Durchführung**

## Beispiel Procedure: MII EXA Kardio EKG Durchführung

Language: de

Profile: [MII PR Kardio EKG Durchführung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md)

**ExtensionProzedurDokumentationsdatum**: 2025-01-10 16:23:12+0200

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 261004008](http://snomed.info/id/261004008) (Diagnostic intent)

**status**: Completed

**category**: Diagnostic assessment

**code**: 12 lead electrocardiogram at rest

**subject**: Beispielpatient

**performed**: 2023-05-03 07:38:07+0000 --> 2023-05-03 07:38:17+0000

**bodySite**: Heart structure

**note**: 

> 

ICD Kontrolle


**usedReference**: [Device: status = active; manufacturer = Mortara Instrument, Inc.; type = MDC_DEV_ECG_MDS](Device-mii-exa-kardio-ekg-geraet-mortara.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-kardio-ekg-durchfuehrung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-durchfuehrung"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2025-01-10T16:23:12+02:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "261004008",
      "display" : "Diagnostic intent"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "165197003",
      "display" : "Diagnostic assessment"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "447113005",
      "display" : "12 lead electrocardiogram at rest"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "performedPeriod" : {
    "start" : "2023-05-03T07:38:07Z",
    "end" : "2023-05-03T07:38:17Z"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "80891009",
      "display" : "Heart structure"
    }]
  }],
  "note" : [{
    "text" : "ICD Kontrolle"
  }],
  "usedReference" : [{
    "reference" : "Device/mii-exa-kardio-ekg-geraet-mortara"
  }]
}

```
