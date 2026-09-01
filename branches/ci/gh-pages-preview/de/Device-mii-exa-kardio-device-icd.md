# MII EXA Kardio Device ICD - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Device ICD**

## Beispiel Device: MII EXA Kardio Device ICD

Language: de

Profile: [MII PR Kardio Device](StructureDefinition-mii-pr-kardio-device.md)

**status**: Active

**manufacturer**: Medtronic

**type**: Implantable defibrillator

**patient**: Beispielpatient



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "mii-exa-kardio-device-icd",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device"]
  },
  "language" : "de",
  "status" : "active",
  "manufacturer" : "Medtronic",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "72506001",
      "display" : "Implantable defibrillator"
    }]
  },
  "patient" : {
    "display" : "Beispielpatient"
  }
}

```
