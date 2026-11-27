# MII PR Kardio EKG Gerät - MII IG Modul Kardio DE v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Gerät**

## Ressourcenprofil: MII PR Kardio EKG Gerät ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet | *Version*:2027.0.0-ballot |
| Draft Stand: 2026-11-27 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Geraet |

 
Profil zur Abbildung eines EKG-Gerätes. 

**Usages:**

* Refer to this Profile: [MII PR Kardio EKG Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.md), [MII PR Kardio EKG Durchführung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md), [MII PR Kardio EKG Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.md) and [MII PR Kardio EKG Referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.md)
* Examples for this Profile: [Device/mii-exa-kardio-ekg-geraet-mortara](Device-mii-exa-kardio-ekg-geraet-mortara.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-ekg-geraet.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [VmdDevice](http://hl7.org/fhir/uv/pocd/1.0.0-202609-ballot3/StructureDefinition-VmdDevice.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [VmdDevice](http://hl7.org/fhir/uv/pocd/1.0.0-202609-ballot3/StructureDefinition-VmdDevice.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 8 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Device.deviceName

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [VmdDevice](http://hl7.org/fhir/uv/pocd/1.0.0-202609-ballot3/StructureDefinition-VmdDevice.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [VmdDevice](http://hl7.org/fhir/uv/pocd/1.0.0-202609-ballot3/StructureDefinition-VmdDevice.html) 

** Summary **

Mandatory: 4 elements
 Must-Support: 8 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Device.deviceName

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-ekg-geraet.csv), [Excel](../StructureDefinition-mii-pr-kardio-ekg-geraet.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-ekg-geraet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-ekg-geraet",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Kardio_EKG_Geraet",
  "title" : "MII PR Kardio EKG Gerät",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-27",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    },
    {
      "system" : "email",
      "value" : "office@medizininformatik-initiative.de"
    }]
  }],
  "description" : "Profil zur Abbildung eines EKG-Gerätes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "dim",
    "uri" : "urn:iso:std:iso:11073:10201",
    "name" : "IEEE 11073-10201 DIM"
  },
  {
    "identity" : "sdc",
    "uri" : "urn:iso:std:iso:11073:10207",
    "name" : "IEEE 11073-10207 SDC"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/uv/pocd/StructureDefinition/VmdDevice|1.0.0-ballot3",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "Hersteller des Gerätes"
    },
    {
      "id" : "Device.serialNumber",
      "path" : "Device.serialNumber",
      "short" : "Seriennummer des Herstellers"
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "short" : "Bezeichnungen des Gerätes"
    },
    {
      "id" : "Device.deviceName.name",
      "path" : "Device.deviceName.name",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName.type",
      "path" : "Device.deviceName.type",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName:modellname",
      "path" : "Device.deviceName",
      "sliceName" : "modellname",
      "short" : "Modellname des Herstellers (z.B. \"ELI 380\")",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName:modellname.type",
      "path" : "Device.deviceName.type",
      "patternCode" : "model-name"
    },
    {
      "id" : "Device.deviceName:nutzername",
      "path" : "Device.deviceName",
      "sliceName" : "nutzername",
      "short" : "Vom Nutzer gewählter Name des Gerätes (z.B. \"EKG Raum 1\")",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Device.deviceName:nutzername.type",
      "path" : "Device.deviceName.type",
      "patternCode" : "user-friendly-name"
    },
    {
      "id" : "Device.modelNumber",
      "path" : "Device.modelNumber",
      "short" : "Modellnummer bzw. Typ-/Bestellnummer des Herstellers",
      "comment" : "Der Modellname (z.B. \"ELI 380\") wird in deviceName[modellname] angegeben."
    },
    {
      "id" : "Device.type.coding",
      "path" : "Device.type.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type.coding.system",
      "path" : "Device.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type.coding.version",
      "path" : "Device.type.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type.coding.code",
      "path" : "Device.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.version",
      "path" : "Device.version",
      "short" : "Version, z.B. der Software des Herstellers"
    },
    {
      "id" : "Device.version.value",
      "path" : "Device.version.value",
      "mustSupport" : true
    }]
  }
}

```
