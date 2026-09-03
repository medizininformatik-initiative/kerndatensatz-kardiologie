# MII PR Kardio Diagnose - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio Diagnose**

## Ressourcenprofil: MII PR Kardio Diagnose 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-10-07 | *Maschinenlesbarer Name*:MII_PR_Kardio_Diagnose |

 
Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis. 

**Usages:**

* Derived from this Profile: [MII PR Kardio Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md)
* Examples for this Profile: [Condition/mii-exa-kardio-diagnose-myokardinfarkt](Condition-mii-exa-kardio-diagnose-myokardinfarkt.md) and [Condition/mii-exa-kardio-embolischer-gefaessverschluss](Condition-mii-exa-kardio-embolischer-gefaessverschluss.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/mii-kerndatensatzmodul-kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-diagnose.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

** Summary **

Mandatory: 0 element(5 nested mandatory elements)
 Must-Support: 8 elements

**Structures**

This structure refers to these other structures:

* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.code.coding (Closed)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MII_PR_Diagnose_Condition](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2027.0.0-ballot.rc1/StructureDefinition-mii-pr-diagnose-condition.html) 

** Summary **

Mandatory: 0 element(5 nested mandatory elements)
 Must-Support: 8 elements

**Structures**

This structure refers to these other structures:

* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [PractitionerRole (http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1)](http://hl7.org/fhir/R4/practitionerrole.html)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.code.coding (Closed)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-diagnose.csv), [Excel](../StructureDefinition-mii-pr-kardio-diagnose.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-diagnose.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-diagnose",
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "version" : "3.0.0",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this profile as the technical FHIR representation of the corresponding Medical Informatics Initiative logical model. The profile constrains a base FHIR resource for the MII module context by specifying how elements are used, which elements are required or not used, which extensions and terminology bindings apply, and how the resource maps to the module-specific content model. Implementers should produce and consume resource instances that conform to this profile when exchanging data for the corresponding MII module."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C15607"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "julian.sass@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2024-03-07"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Kardio_Diagnose",
  "title" : "MII PR Kardio Diagnose",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-07",
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
  "description" : "Profil zur Abbildung einer Diagnose im Kontext des Projekts Acribis.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "LogicalModel",
    "name" : "FHIR-Profil zu LogicalModel Mapping"
  },
  {
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
  "type" : "Condition",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|2027.0.0-ballot.rc1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "comment" : "Extended valueSet to allow value'terminal'/'end-stage' as additional information for a given cancer diagnosis.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-condition-severity-snomedct|2027.0.0-ballot.rc1"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.version",
      "path" : "Condition.code.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding.code",
      "path" : "Condition.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:sct",
      "path" : "Condition.code.coding",
      "sliceName" : "sct"
    },
    {
      "id" : "Condition.code.coding:sct.version",
      "path" : "Condition.code.coding.version",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:orphanet",
      "path" : "Condition.code.coding",
      "sliceName" : "orphanet"
    },
    {
      "id" : "Condition.code.coding:orphanet.version",
      "path" : "Condition.code.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding:kardio",
      "path" : "Condition.code.coding",
      "sliceName" : "kardio",
      "comment" : "Der in diesem Slice hinterlegbare Code ist nur zu verwenden, um anzugeben, \ndass unbekannt ist, ob ein 'Embolischer Gefäßverschluss cerebro vaskulär (Fragebogenitem 67)' vorlag.",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
        "code" : "eg-cv"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient|4.0.1"]
      }]
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "comment" : "Allows documentation about who recorded the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "comment" : "Allows documentation about who asserted the given information. This might be the Patient (see subject reference), a Study Nurse or a Doctor. May focus on the role (PracticionerRole-Reference) and not reference a specific person.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient|4.0.1",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole|4.0.1"]
      }],
      "mustSupport" : true
    }]
  }
}

```
