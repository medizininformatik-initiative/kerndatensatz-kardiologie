# MII PR Kardio Linksventrikulaere Ejektionsfraktion - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio Linksventrikulaere Ejektionsfraktion**

## Ressourcenprofil: MII PR Kardio Linksventrikulaere Ejektionsfraktion 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-12-08 | *Maschinenlesbarer Name*:MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion |

 
Profil zur Angabe eines Untersuchungsergebnisses zur LVEF im Kontext des Projekts Acribis. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-kardio-lvef](Observation-mii-exa-kardio-lvef.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 9 elements(7 nested mandatory elements)
 Must-Support: 17 elements

**Structures**

This structure refers to these other structures:

* [Procedure (http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1)](http://hl7.org/fhir/R4/procedure.html)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.referenceRange (ordered, Closed)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 9 elements(7 nested mandatory elements)
 Must-Support: 17 elements

**Structures**

This structure refers to these other structures:

* [Procedure (http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1)](http://hl7.org/fhir/R4/procedure.html)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.referenceRange (ordered, Closed)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.csv), [Excel](../StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-linksventrikulaere-ejektionsfraktion",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion",
  "title" : "MII PR Kardio Linksventrikulaere Ejektionsfraktion",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-08",
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
  "description" : "Profil zur Angabe eines Untersuchungsergebnisses zur LVEF im Kontext des Projekts Acribis.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "vs-de-2",
        "severity" : "error",
        "human" : "If there is no component or hasMember element then either a value[x] or a data absent reason must be present",
        "expression" : "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion|2027.0.0-ballot.rc1"
      },
      {
        "key" : "mii-icu-1",
        "severity" : "error",
        "human" : "If there is no Observation.value, a dataAbsentReason must be given.",
        "expression" : "value.exists().not() implies dataAbsentReason.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion|2027.0.0-ballot.rc1"
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "comment" : "Angabe einer übergeordnete (Echokardiographie-) Prozedur",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Procedure|4.0.1"]
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "comment" : "Dieses Feld dient der Präzisierung des Status der Untersuchung"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
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
      "id" : "Observation.category:vs-cat",
      "path" : "Observation.category",
      "sliceName" : "vs-cat",
      "comment" : "Category 'imaging', da LVEF meist mittels Echokardiographie oder durch MRT, CT, etc. gemessen.",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding.version",
      "path" : "Observation.code.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:sct",
      "path" : "Observation.code.coding",
      "sliceName" : "sct",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "250908004"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:loinc",
      "path" : "Observation.code.coding",
      "sliceName" : "loinc",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "10230-1"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      },
      {
        "code" : "instant"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "min" : 1,
      "patternString" : "%",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "comment" : "Angabe der für die Ermittlung/Berechnung verwendeten Methode (2D,Simpson,3D,CMR, etc.) als SNOMED CT oder als LOINC-Code.",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "text"
        }],
        "description" : "Referenzbereiche LVEF vgl. 2021 ESC Guidelines for the diagnosis and treatment of acute and chronic heart failure.",
        "ordered" : true,
        "rules" : "closed"
      }
    },
    {
      "id" : "Observation.referenceRange:normal",
      "path" : "Observation.referenceRange",
      "sliceName" : "normal",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.referenceRange:normal.low.value",
      "path" : "Observation.referenceRange.low.value",
      "patternDecimal" : 50
    },
    {
      "id" : "Observation.referenceRange:normal.low.unit",
      "path" : "Observation.referenceRange.low.unit",
      "patternString" : "%"
    },
    {
      "id" : "Observation.referenceRange:normal.low.system",
      "path" : "Observation.referenceRange.low.system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.referenceRange:normal.low.code",
      "path" : "Observation.referenceRange.low.code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.referenceRange:normal.text",
      "path" : "Observation.referenceRange.text",
      "min" : 1,
      "patternString" : "Normal"
    },
    {
      "id" : "Observation.referenceRange:mild",
      "path" : "Observation.referenceRange",
      "sliceName" : "mild",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.referenceRange:mild.low.value",
      "path" : "Observation.referenceRange.low.value",
      "patternDecimal" : 41
    },
    {
      "id" : "Observation.referenceRange:mild.low.unit",
      "path" : "Observation.referenceRange.low.unit",
      "patternString" : "%"
    },
    {
      "id" : "Observation.referenceRange:mild.low.system",
      "path" : "Observation.referenceRange.low.system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.referenceRange:mild.low.code",
      "path" : "Observation.referenceRange.low.code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.referenceRange:mild.high.value",
      "path" : "Observation.referenceRange.high.value",
      "patternDecimal" : 49
    },
    {
      "id" : "Observation.referenceRange:mild.high.unit",
      "path" : "Observation.referenceRange.high.unit",
      "patternString" : "%"
    },
    {
      "id" : "Observation.referenceRange:mild.high.system",
      "path" : "Observation.referenceRange.high.system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.referenceRange:mild.high.code",
      "path" : "Observation.referenceRange.high.code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.referenceRange:mild.text",
      "path" : "Observation.referenceRange.text",
      "min" : 1,
      "patternString" : "Mildly reduced"
    },
    {
      "id" : "Observation.referenceRange:reduced",
      "path" : "Observation.referenceRange",
      "sliceName" : "reduced",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.referenceRange:reduced.high.value",
      "path" : "Observation.referenceRange.high.value",
      "patternDecimal" : 40
    },
    {
      "id" : "Observation.referenceRange:reduced.high.unit",
      "path" : "Observation.referenceRange.high.unit",
      "patternString" : "%"
    },
    {
      "id" : "Observation.referenceRange:reduced.high.system",
      "path" : "Observation.referenceRange.high.system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.referenceRange:reduced.high.code",
      "path" : "Observation.referenceRange.high.code",
      "patternCode" : "%"
    },
    {
      "id" : "Observation.referenceRange:reduced.text",
      "path" : "Observation.referenceRange.text",
      "min" : 1,
      "patternString" : "Reduced"
    }]
  }
}

```
