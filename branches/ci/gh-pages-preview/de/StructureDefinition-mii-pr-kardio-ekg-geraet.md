# MII PR Kardio EKG Gerät - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Gerät**

## Ressourcenprofil: MII PR Kardio EKG Gerät ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-05-22 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Geraet |

 
Profil zur Abbildung eines EKG-Gerätes. 

**Usages:**

* Refer to this Profile: [MII PR Kardio EKG Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.md)
* Examples for this Profile: [Device/mii-exa-kardio-ekg-geraet-mortara](Device-mii-exa-kardio-ekg-geraet-mortara.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-ekg-geraet.json)

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

Mandatory: 7 elements
 Must-Support: 8 elements

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

Mandatory: 7 elements
 Must-Support: 8 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-ekg-geraet.csv), [Excel](../StructureDefinition-mii-pr-kardio-ekg-geraet.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-ekg-geraet.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-ekg-geraet",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_EKG_Geraet",
  "title" : "MII PR Kardio EKG Gerät",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-05-22",
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
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
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
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.deviceName",
      "path" : "Device.deviceName",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-objekte-geraete-mdc|2027.0.0-ballot.rc1"
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
    }]
  }
}

```
