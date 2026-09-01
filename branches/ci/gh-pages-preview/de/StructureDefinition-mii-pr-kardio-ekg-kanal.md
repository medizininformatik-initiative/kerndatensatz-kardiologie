# MII PR Kardio EKG Kanal - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Kanal**

## Ressourcenprofil: MII PR Kardio EKG Kanal ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-07-07 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Kanal |

 
Profil zur Abbildung eines EKG-Kanals. 

**Usages:**

* Examples for this Profile: [Device/mii-exa-kardio-ekg-kanal-i](Device-mii-exa-kardio-ekg-kanal-i.md), [Device/mii-exa-kardio-ekg-kanal-ii](Device-mii-exa-kardio-ekg-kanal-ii.md) and [Device/mii-exa-kardio-ekg-kanal-iii](Device-mii-exa-kardio-ekg-kanal-iii.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-ekg-kanal.json)

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

Mandatory: 14 elements
 Must-Support: 16 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Kardio EKG Gerät (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet|2027.0.0-ballot.rc1)](StructureDefinition-mii-pr-kardio-ekg-geraet.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Device.type.coding
* The element 1 is sliced based on the value of Device.property

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

Mandatory: 14 elements
 Must-Support: 16 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Kardio EKG Gerät (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet|2027.0.0-ballot.rc1)](StructureDefinition-mii-pr-kardio-ekg-geraet.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Device.type.coding
* The element 1 is sliced based on the value of Device.property

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-ekg-kanal.csv), [Excel](../StructureDefinition-mii-pr-kardio-ekg-kanal.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-ekg-kanal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-ekg-kanal",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_EKG_Kanal",
  "title" : "MII PR Kardio EKG Kanal",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-07-07",
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
  "description" : "Profil zur Abbildung eines EKG-Kanals.",
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
      "id" : "Device.type",
      "path" : "Device.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.type.coding",
      "path" : "Device.type.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "open"
      },
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
      "id" : "Device.type.coding:geraetetyp",
      "path" : "Device.type.coding",
      "sliceName" : "geraetetyp",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "urn:iso:std:iso:11073:10101",
        "code" : "69799"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-objekte-geraete-mdc|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.property:kanalbezeichnung",
      "path" : "Device.property",
      "sliceName" : "kanalbezeichnung",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:kanalbezeichnung.type",
      "path" : "Device.property.type",
      "short" : "Attribute \"Logical-Channel-No\" der Kanal-Klasse in ISO 11073",
      "definition" : "Code 68142 (1::2606) MDC_ATTR_CHAN_NUM_LOGICAL ist das Attribut \"Logical-Channel-No\" der Kanal-Klasse in ISO 11073",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "68142"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-objekte-geraete-mdc|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Device.property:kanalbezeichnung.type.coding",
      "path" : "Device.property.type.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.property:kanalbezeichnung.type.coding.system",
      "path" : "Device.property.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.property:kanalbezeichnung.type.coding.version",
      "path" : "Device.property.type.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.property:kanalbezeichnung.type.coding.code",
      "path" : "Device.property.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.property:kanalbezeichnung.valueQuantity",
      "path" : "Device.property.valueQuantity",
      "max" : "0"
    },
    {
      "id" : "Device.property:kanalbezeichnung.valueCode",
      "path" : "Device.property.valueCode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-kanaele-mdc|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Device.parent",
      "path" : "Device.parent",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet|2027.0.0-ballot.rc1"]
      }],
      "mustSupport" : true
    }]
  }
}

```
