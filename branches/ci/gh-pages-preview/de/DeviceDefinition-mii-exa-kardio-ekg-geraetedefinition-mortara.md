# MII EXA Kardio EKG Geraetedefinition Mortara - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG Geraetedefinition Mortara**

## Beispiel DeviceDefinition: MII EXA Kardio EKG Geraetedefinition Mortara

Language: de

Profile: [MII PR Kardio EKG Gerätedefinition](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.md)

**manufacturer**: Mortara Instrument, Inc.

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | ELI 380 | Model name |

### Specializations

| | |
| :--- | :--- |
| - | **SystemType** |
| * | Resting ECG |

### PhysicalCharacteristics

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Height** | **Width** | **Depth** | **Weight** |
| * | 14 cm (Details: UCUM codecm = 'cm') | 39 cm (Details: UCUM codecm = 'cm') | 51 cm (Details: UCUM codecm = 'cm') | 12 kg (Details: UCUM codekg = 'kg') |

**onlineInformation**: [https://www.hillrom.de/de/products/eli-380-electrocardiograph/](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://www.hillrom.de/de/products/eli-380-electrocardiograph/)



## Resource Content

```json
{
  "resourceType" : "DeviceDefinition",
  "id" : "mii-exa-kardio-ekg-geraetedefinition-mortara",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraetedefinition"]
  },
  "language" : "de",
  "manufacturerString" : "Mortara Instrument, Inc.",
  "deviceName" : [{
    "name" : "ELI 380",
    "type" : "model-name"
  }],
  "specialization" : [{
    "systemType" : "Resting ECG"
  }],
  "physicalCharacteristics" : {
    "height" : {
      "value" : 14,
      "unit" : "cm",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    },
    "width" : {
      "value" : 39,
      "unit" : "cm",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    },
    "depth" : {
      "value" : 51,
      "unit" : "cm",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    },
    "weight" : {
      "value" : 12,
      "unit" : "kg",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg"
    }
  },
  "onlineInformation" : "https://www.hillrom.de/de/products/eli-380-electrocardiograph/"
}

```
