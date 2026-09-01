# MII EXA Kardio Kardiale Deviceimplantation ICD - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Kardiale Deviceimplantation ICD**

## Beispiel Procedure: MII EXA Kardio Kardiale Deviceimplantation ICD

Language: de

Profile: [MII PR Kardio Kardiale Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.md)

**ExtensionProzedurDokumentationsdatum**: 2025-05-16 16:23:12+0200

**MII EX Prozedur Durchführungsabsicht**: [SNOMED CT: 262202000](http://snomed.info/id/262202000) (Therapeutic)

**status**: Completed

**category**: Surgical procedure

**code**: Implantation of internal cardiac defibrillator

**subject**: Beispielpatient

**performed**: 2020-04

**bodySite**: Heart structure

**note**: 

> 

Implantation eines ICDs im April 2020


### FocalDevices

| | | |
| :--- | :--- | :--- |
| - | **Action** | **Manipulated** |
| * | Surgical implantation - action | [Device: status = active; manufacturer = Medtronic; type = Implantable defibrillator](Device-mii-exa-kardio-device-icd.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-kardio-kardiale-deviceimplantation-icd",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-kardiale-deviceimplantation"]
  },
  "language" : "de",
  "extension" : [{
    "url" : "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum",
    "valueDateTime" : "2025-05-16T16:23:12+02:00"
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
    "valueCoding" : {
      "system" : "http://snomed.info/sct",
      "code" : "262202000",
      "display" : "Therapeutic"
    }
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "387713003",
      "display" : "Surgical procedure"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "395218007",
      "display" : "Implantation of internal cardiac defibrillator"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "performedDateTime" : "2020-04",
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "80891009",
      "display" : "Heart structure"
    }]
  }],
  "note" : [{
    "text" : "Implantation eines ICDs im April 2020"
  }],
  "focalDevice" : [{
    "action" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "129338005",
        "display" : "Surgical implantation - action"
      }]
    },
    "manipulated" : {
      "reference" : "Device/mii-exa-kardio-device-icd"
    }
  }]
}

```
