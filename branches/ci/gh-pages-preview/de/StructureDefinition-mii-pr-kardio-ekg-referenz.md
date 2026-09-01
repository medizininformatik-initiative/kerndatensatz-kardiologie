# MII PR Kardio EKG Referenz - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Referenz**

## Ressourcenprofil: MII PR Kardio EKG Referenz ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Referenz |

 
Profil zur Referenzierung eines EKGs dessen Rohdaten an einem anderen Ort gespeichert werden. 

**Usages:**

* Examples for this Profile: [DocumentReference/mii-exa-kardio-ekg-referenz](DocumentReference-mii-exa-kardio-ekg-referenz.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-ekg-referenz.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

** Summary **

Mandatory: 8 elements
 Must-Support: 10 elements

**Structures**

This structure refers to these other structures:

* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

** Summary **

Mandatory: 8 elements
 Must-Support: 10 elements

**Structures**

This structure refers to these other structures:

* [Device (http://hl7.org/fhir/StructureDefinition/Device|4.0.1)](http://hl7.org/fhir/R4/device.html)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-ekg-referenz.csv), [Excel](../StructureDefinition-mii-pr-kardio-ekg-referenz.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-ekg-referenz.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-ekg-referenz",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_EKG_Referenz",
  "title" : "MII PR Kardio EKG Referenz",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-01T14:44:58+00:00",
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
  "description" : "Profil zur Referenzierung eines EKGs dessen Rohdaten an einem anderen Ort gespeichert werden.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.status",
      "path" : "DocumentReference.status",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11524-6"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding",
      "path" : "DocumentReference.type.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding.system",
      "path" : "DocumentReference.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.type.coding.code",
      "path" : "DocumentReference.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.content.attachment.url",
      "path" : "DocumentReference.content.attachment.url",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
