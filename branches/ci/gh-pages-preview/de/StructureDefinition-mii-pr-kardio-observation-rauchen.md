# MII PR Kardio Observation Rauchen - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio Observation Rauchen**

## Ressourcenprofil: MII PR Kardio Observation Rauchen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_PR_Kardio_Observation_Rauchen |

 
Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Modul Kardiologie. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-kardio-raucherstatus](Observation-mii-exa-kardio-raucherstatus.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-observation-rauchen.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ISiKRaucherStatus](https://simplifier.net/resolve?scope=de.gematik.isik@6.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ISiKRaucherStatus](https://simplifier.net/resolve?scope=de.gematik.isik@6.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus) 

** Summary **

Mandatory: 4 elements(6 nested mandatory elements)
 Must-Support: 14 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [QuestionnaireResponse (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse|4.0.1)](http://hl7.org/fhir/R4/questionnaireresponse.html)
* [DocumentReference (http://hl7.org/fhir/StructureDefinition/DocumentReference|4.0.1)](http://hl7.org/fhir/R4/documentreference.html)
* [Media (http://hl7.org/fhir/StructureDefinition/Media|4.0.1)](http://hl7.org/fhir/R4/media.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ISiKRaucherStatus](https://simplifier.net/resolve?scope=de.gematik.isik@6.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ISiKRaucherStatus](https://simplifier.net/resolve?scope=de.gematik.isik@6.0.0&canonical=https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus) 

** Summary **

Mandatory: 4 elements(6 nested mandatory elements)
 Must-Support: 14 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [Observation (http://hl7.org/fhir/StructureDefinition/Observation|4.0.1)](http://hl7.org/fhir/R4/observation.html)
* [QuestionnaireResponse (http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse|4.0.1)](http://hl7.org/fhir/R4/questionnaireresponse.html)
* [DocumentReference (http://hl7.org/fhir/StructureDefinition/DocumentReference|4.0.1)](http://hl7.org/fhir/R4/documentreference.html)
* [Media (http://hl7.org/fhir/StructureDefinition/Media|4.0.1)](http://hl7.org/fhir/R4/media.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.component
* The element 1 is sliced based on the value of Observation.component.value[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-observation-rauchen.csv), [Excel](../StructureDefinition-mii-pr-kardio-observation-rauchen.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-observation-rauchen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-observation-rauchen",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_Observation_Rauchen",
  "title" : "MII PR Kardio Observation Rauchen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T19:01:50+00:00",
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
  "description" : "Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Modul Kardiologie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://gematik.de/fhir/isik/StructureDefinition/ISiKRaucherStatus|6.0.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-category|4.0.1"
      }
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding"
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
      "id" : "Observation.code.coding:snomed-ct",
      "path" : "Observation.code.coding",
      "sliceName" : "snomed-ct",
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding:loinc",
      "path" : "Observation.code.coding",
      "sliceName" : "loinc",
      "max" : "1"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient|4.0.1"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Current Smoking Status als Loinc-Answer Code (siehe ISiK VS: CurrentSmokingStatusUvIps)"
    },
    {
      "id" : "Observation.value[x]:valueDateTime",
      "path" : "Observation.value[x]",
      "sliceName" : "valueDateTime",
      "max" : "0",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse|4.0.1"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/Media|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/Observation|4.0.1"]
      }]
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "description" : "Zusätzliche Angaben zum Rauchverhalten.",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Zusätzliche Angaben zum Rauchverhalten."
    },
    {
      "id" : "Observation.component:packungsjahre",
      "path" : "Observation.component",
      "sliceName" : "packungsjahre",
      "short" : "Die Zahl der täglich konsumierten Zigarettenpackungen (Inhalt 20 Stück) wird mit der Zahl der Raucherjahre multipliziert (siehe https://cde.nlm.nih.gov/deView?tinyId=Q1fNmemkyg).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:packungsjahre.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "401201003"
        }]
      }
    },
    {
      "id" : "Observation.component:packungsjahre.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:packungsjahre.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:packungsjahre.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:packungsjahre.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "{pack-years}"
    },
    {
      "id" : "Observation.component:packungsjahre.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:packungsjahre.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{pack-years}"
    },
    {
      "id" : "Observation.component:zigarettenProTag",
      "path" : "Observation.component",
      "sliceName" : "zigarettenProTag",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:zigarettenProTag.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "63640-7"
        }]
      }
    },
    {
      "id" : "Observation.component:zigarettenProTag.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zigarettenProTag.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zigarettenProTag.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:zigarettenProTag.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "{cigarettes-per-day}"
    },
    {
      "id" : "Observation.component:zigarettenProTag.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:zigarettenProTag.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "{cigarettes-per-day}"
    },
    {
      "id" : "Observation.component:rauchbeginn",
      "path" : "Observation.component",
      "sliceName" : "rauchbeginn",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:rauchbeginn.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "266929003"
        }]
      }
    },
    {
      "id" : "Observation.component:rauchbeginn.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:rauchbeginn.value[x]:valueDateTime",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rauchbeginn.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:rauchbeginn.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "year"
    },
    {
      "id" : "Observation.component:rauchbeginn.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:rauchbeginn.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "a"
    },
    {
      "id" : "Observation.component:rauchdauer",
      "path" : "Observation.component",
      "sliceName" : "rauchdauer",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Observation.component:rauchdauer.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "228487000"
        }]
      }
    },
    {
      "id" : "Observation.component:rauchdauer.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rauchdauer.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rauchdauer.value[x].comparator",
      "path" : "Observation.component.value[x].comparator",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:rauchdauer.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "year"
    },
    {
      "id" : "Observation.component:rauchdauer.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:rauchdauer.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "a"
    }]
  }
}

```
