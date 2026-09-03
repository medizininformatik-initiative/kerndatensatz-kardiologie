# MII PR Kardio Diagnose Prozedur Nein Unbekannt - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio Diagnose Prozedur Nein Unbekannt**

## Ressourcenprofil: MII PR Kardio Diagnose Prozedur Nein Unbekannt 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-04 | *Maschinenlesbarer Name*:MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt |

 
Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose, bzw. Prozedur, oder Unklarheit darüber ab. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-kardio-herzinsuffizienz-unbekannt](Observation-mii-exa-kardio-herzinsuffizienz-unbekannt.md), [Observation/mii-exa-kardio-hoehergradiges-vitium-nein](Observation-mii-exa-kardio-hoehergradiges-vitium-nein.md), [Observation/mii-exa-kardio-kein-device](Observation-mii-exa-kardio-kein-device.md) and [Observation/mii-exa-kardio-pci-nein](Observation-mii-exa-kardio-pci-nein.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.json)

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

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 3 elements(3 nested mandatory elements)
 Must-Support: 14 elements

**Structures**

This structure refers to these other structures:

* [Coding-Profil für ICD-10-GM (http://fhir.de/StructureDefinition/CodingICD10GM|1.6.0)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/StructureDefinition/CodingICD10GM)
* [Coding-Profil für Alpha-ID (http://fhir.de/StructureDefinition/CodingAlphaID|1.6.0)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/StructureDefinition/CodingAlphaID)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.code.coding (Closed)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 3 elements(3 nested mandatory elements)
 Must-Support: 14 elements

**Structures**

This structure refers to these other structures:

* [Coding-Profil für ICD-10-GM (http://fhir.de/StructureDefinition/CodingICD10GM|1.6.0)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/StructureDefinition/CodingICD10GM)
* [Coding-Profil für Alpha-ID (http://fhir.de/StructureDefinition/CodingAlphaID|1.6.0)](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.de/StructureDefinition/CodingAlphaID)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.code.coding (Closed)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.csv), [Excel](../StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-diagnose-prozedur-nein-unbekannt",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose-prozedur-nein-unbekannt",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt",
  "title" : "MII PR Kardio Diagnose Prozedur Nein Unbekannt",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-09-04",
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
  "description" : "Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose, bzw. Prozedur, oder Unklarheit darüber ab.",
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
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-category|4.0.1"
      }
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
        "rules" : "closed"
      },
      "min" : 1,
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
      "id" : "Observation.code.coding:icd10-gm",
      "path" : "Observation.code.coding",
      "sliceName" : "icd10-gm",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://fhir.de/StructureDefinition/CodingICD10GM|1.6.0"]
      }],
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-icd10gm|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Observation.code.coding:diagnoseSnomed",
      "path" : "Observation.code.coding",
      "sliceName" : "diagnoseSnomed",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-mii-diagnosecodes-snomed|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Observation.code.coding:diagnoseSnomed.system",
      "path" : "Observation.code.coding.system",
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:prozedurSnomed",
      "path" : "Observation.code.coding",
      "sliceName" : "prozedurSnomed",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-sct|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Observation.code.coding:prozedurSnomed.system",
      "path" : "Observation.code.coding.system",
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding:alpha-id",
      "path" : "Observation.code.coding",
      "sliceName" : "alpha-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding",
        "profile" : ["http://fhir.de/StructureDefinition/CodingAlphaID|1.6.0"]
      }],
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-alphaid|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Observation.code.coding:orphanet",
      "path" : "Observation.code.coding",
      "sliceName" : "orphanet",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://www.orpha.net"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/mii-vs-diagnose-orphanet|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Observation.code.coding:kardio",
      "path" : "Observation.code.coding",
      "sliceName" : "kardio",
      "comment" : "Der in diesem Slice hinterlegbare Code ist nur zu verwenden, um eine allgemeine Angabe zu \n'Embolischer Gefäßverschluss cerebro vaskulär' (Fragebogenitem 67) anzulegen, falls keine genauere Information im \nSystem/Fragebogen gegeben ist.",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
        "code" : "eg-cv"
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
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nein-unbekannt|2027.0.0-ballot.rc1"
      }
    }]
  }
}

```
