# MII PR Kardio NBG Schrittmachermodus - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio NBG Schrittmachermodus**

## Ressourcenprofil: MII PR Kardio NBG Schrittmachermodus 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-05-13 | *Maschinenlesbarer Name*:MII_PR_Kardio_NBG_Schrittmachermodus |

 
Dieses Profil bildet die Einstellungsmöglichkeit eines Herzschrittmacher nach dem NBG-Standard ab. Die konkrete Programmierung eines Herzschrittmachers zu einem bestimmmten Zeitpunkt oder in einem Zeitraum wird in einer Observation abgebildet. 

**Usages:**

* Examples for this Profile: [DeviceMetric/mii-exa-kardio-nbg-schrittmachermodus](DeviceMetric-mii-exa-kardio-nbg-schrittmachermodus.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceMetric](http://hl7.org/fhir/R4/devicemetric.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceMetric](http://hl7.org/fhir/R4/devicemetric.html) 

** Summary **

Mandatory: 5 elements
 Must-Support: 7 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DeviceMetric](http://hl7.org/fhir/R4/devicemetric.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceMetric](http://hl7.org/fhir/R4/devicemetric.html) 

** Summary **

Mandatory: 5 elements
 Must-Support: 7 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.csv), [Excel](../StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-nbg-schrittmachermodus",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-nbg-schrittmachermodus",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_NBG_Schrittmachermodus",
  "title" : "MII PR Kardio NBG Schrittmachermodus",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-05-13",
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
  "description" : "Dieses Profil bildet die Einstellungsmöglichkeit eines Herzschrittmacher nach dem NBG-Standard ab.\r\nDie konkrete Programmierung eines Herzschrittmachers zu einem bestimmmten Zeitpunkt oder in einem Zeitraum wird in einer Observation abgebildet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceMetric",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DeviceMetric|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DeviceMetric",
      "path" : "DeviceMetric"
    },
    {
      "id" : "DeviceMetric.type",
      "path" : "DeviceMetric.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "730752"
        }]
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/devicemetric-type|4.0.1"
      }
    },
    {
      "id" : "DeviceMetric.type.coding",
      "path" : "DeviceMetric.type.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceMetric.type.coding.system",
      "path" : "DeviceMetric.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceMetric.type.coding.version",
      "path" : "DeviceMetric.type.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceMetric.type.coding.code",
      "path" : "DeviceMetric.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceMetric.source",
      "path" : "DeviceMetric.source",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceMetric.category",
      "path" : "DeviceMetric.category",
      "patternCode" : "setting",
      "mustSupport" : true
    }]
  }
}

```
