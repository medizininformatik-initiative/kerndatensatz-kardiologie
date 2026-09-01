# MII PR Kardio EKG Gerätedefinition - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Gerätedefinition**

## Ressourcenprofil: MII PR Kardio EKG Gerätedefinition ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraetedefinition | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-05-22 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Geraetedefinition |

 
Profil zur Abbildung einer EKG-Gerätedefinition. 

**Usages:**

* Examples for this Profile: [DeviceDefinition/mii-exa-kardio-ekg-geraetedefinition-mortara](DeviceDefinition-mii-exa-kardio-ekg-geraetedefinition-mortara.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 2 elements

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DeviceDefinition](http://hl7.org/fhir/R4/devicedefinition.html) 

** Summary **

Mandatory: 2 elements
 Must-Support: 2 elements

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.csv), [Excel](../StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-ekg-geraetedefinition",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraetedefinition",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_EKG_Geraetedefinition",
  "title" : "MII PR Kardio EKG Gerätedefinition",
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
  "description" : "Profil zur Abbildung einer EKG-Gerätedefinition.",
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
  "type" : "DeviceDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DeviceDefinition|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DeviceDefinition",
      "path" : "DeviceDefinition"
    },
    {
      "id" : "DeviceDefinition.manufacturer[x]",
      "path" : "DeviceDefinition.manufacturer[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DeviceDefinition.deviceName",
      "path" : "DeviceDefinition.deviceName",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
