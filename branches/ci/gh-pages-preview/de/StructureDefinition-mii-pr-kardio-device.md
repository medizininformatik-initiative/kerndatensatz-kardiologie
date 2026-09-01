# MII PR Kardio Device - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio Device**

## Ressourcenprofil: MII PR Kardio Device 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-12-10 | *Maschinenlesbarer Name*:MII_PR_Kardio_Device |

 
Profil zur Abbildung eines implantierten Herzschrittmachers, Defibrillators oder ventrikulären Unterstützungssystems. 

**Usages:**

* Examples for this Profile: [Device/mii-exa-kardio-device-icd](Device-mii-exa-kardio-device-icd.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-device.json)

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

Mandatory: 5 elements
 Must-Support: 8 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-device.csv), [Excel](../StructureDefinition-mii-pr-kardio-device.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-device",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-device",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_Device",
  "title" : "MII PR Kardio Device",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-10",
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
  "description" : "Profil zur Abbildung eines implantierten Herzschrittmachers, Defibrillators oder ventrikulären Unterstützungssystems.",
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
      "id" : "Device.expirationDate",
      "path" : "Device.expirationDate",
      "comment" : "Dieses Feld kann (ergänzend zum Status) genutzt werden, um anzugeben, dass ein Gerät nicht mehr verwendbar ist oder seit wann es nicht mehr verwendet wird. In solchen Fällen sollte davon ausgegangen werden, dass das Gerät nicht mehr implantiert ist und daher bei der Bestimmung aktuell implantierter Geräte nicht berücksichtigt werden sollte.",
      "mustSupport" : true
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "comment" : "Der Typ soll mit einem SNOMED-Code angegeben werden.\r\nFür ACRIBiS müssen die folgenden Codes verwendet werden (Stand 01.05.2025):\r\n - **ICD**: 72506001 - Implantable defibrillator, device (physical object)\r\n - **CRT**: 704708004 - Cardiac resynchronization therapy implantable pacemaker (physical object)\r\n - **ICD+CRT**: 704707009 - Cardiac resynchronization therapy implantable defibrillator (physical object)\r\n - **unbekannt**: Angabe, dass der genaue Device.type unbekannt ist. Abbildung über asked-unknown. Suche der Angabe über Verknüpfung des Devices in der Prozedur \"MII PR Kardio Kardiale Deviceimplantation\" und mittels Angabe des Metaprofils.\r\n - **LVAD**: 360066001 - Left ventricular assist device (physical object)\r\n - **RVAD**: 360065002 - Right ventricular assist device (physical object)\r\n - **BiVAD**: 360057000 - Biventricular assist device (physical object)",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraetetyp-snomedct|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Device.type.coding",
      "path" : "Device.type.coding",
      "min" : 1,
      "max" : "1",
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
      "id" : "Device.patient",
      "path" : "Device.patient",
      "mustSupport" : true
    }]
  }
}

```
