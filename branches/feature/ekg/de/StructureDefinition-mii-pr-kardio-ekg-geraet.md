# MII PR Kardio EKG Gerät - MII IG Modul Kardio DE v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Gerät**

## Ressourcenprofil: MII PR Kardio EKG Gerät ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet | *Version*:2027.0.0-ballot |
| Draft Stand: 2026-11-06 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Geraet |

 
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

Diese Struktur ist abgeleitet von [Device](http://hl7.org/fhir/R4/device.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Device](http://hl7.org/fhir/R4/device.html) 

** Summary **

Mandatory: 5 elements
 Must-Support: 18 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Device.deviceName

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Device](http://hl7.org/fhir/R4/device.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Device](http://hl7.org/fhir/R4/device.html) 

** Summary **

Mandatory: 5 elements
 Must-Support: 18 elements

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
  "date" : "2026-11-06",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "mustSupport" : true
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "Hersteller des Gerätes",
      "mustSupport" : true
    },
    {
      "id" : "Device.serialNumber",
      "path" : "Device.serialNumber",
      "short" : "Seriennummer des Herstellers",
      "mustSupport" : true
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
      "short" : "Bezeichnungen des Gerätes",
      "mustSupport" : true
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
      "id" : "Device.deviceName:nutzername",
      "path" : "Device.deviceName",
      "sliceName" : "nutzername",
      "short" : "Vom Nutzer gewählter Name des Gerätes (z.B. \"EKG Raum 1\")",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName:nutzername.type",
      "path" : "Device.deviceName.type",
      "patternCode" : "user-friendly-name"
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
      "id" : "Device.modelNumber",
      "path" : "Device.modelNumber",
      "short" : "Modellnummer bzw. Typ-/Bestellnummer des Herstellers",
      "comment" : "Der Modellname (z.B. \"ELI 380\") wird in deviceName[modellname] angegeben.",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-objekte-geraete-mdc|2027.0.0-ballot"
      }
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
      "short" : "Version, z.B. der Software des Herstellers",
      "mustSupport" : true
    },
    {
      "id" : "Device.version.type",
      "path" : "Device.version.type",
      "mustSupport" : true
    },
    {
      "id" : "Device.version.value",
      "path" : "Device.version.value",
      "mustSupport" : true
    },
    {
      "id" : "Device.location",
      "path" : "Device.location",
      "short" : "Standort des Gerätes (z.B. Klinik, Abteilung, Station)",
      "mustSupport" : true
    }]
  }
}

```
