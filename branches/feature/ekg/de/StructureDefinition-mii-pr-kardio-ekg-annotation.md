# MII PR Kardio EKG Annotation - MII IG Modul Kardio DE v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Kardio EKG Annotation**

## Ressourcenprofil: MII PR Kardio EKG Annotation ( Experimentell ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation | *Version*:2027.0.0-ballot |
| Draft Stand: 2026-11-06 | *Maschinenlesbarer Name*:MII_PR_Kardio_EKG_Annotation |

 
Profil zur Erfassung von Annotationen, z.B. Messergebnisse und Interpretationen, eines EKG. 

**Usages:**

* Examples for this Profile: [Observation/mii-exa-kardio-ekg-rr-interval](Observation-mii-exa-kardio-ekg-rr-interval.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.kardiologie|current/StructureDefinition/StructureDefinition-mii-pr-kardio-ekg-annotation.json)

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

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 9 elements(5 nested mandatory elements)
 Must-Support: 22 elements

**Structures**

This structure refers to these other structures:

* [MII PR Kardio EKG Durchführung (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-durchfuehrung|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [MII PR Kardio EKG Gerät (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-geraet.md)
* [MII PR Kardio EKG Kanal (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-kanal.md)
* [MII PR Kardio EKG Referenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-referenz.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.value[x]
* The element 1 is sliced based on the value of Observation.derivedFrom

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Observation](http://hl7.org/fhir/R4/observation.html) 

** Summary **

Mandatory: 9 elements(5 nested mandatory elements)
 Must-Support: 22 elements

**Structures**

This structure refers to these other structures:

* [MII PR Kardio EKG Durchführung (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-durchfuehrung|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md)
* [Patient (http://hl7.org/fhir/StructureDefinition/Patient|4.0.1)](http://hl7.org/fhir/R4/patient.html)
* [MII PR Kardio EKG Gerät (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-geraet.md)
* [MII PR Kardio EKG Kanal (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-kanal.md)
* [MII PR Kardio EKG Referenz (https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz|2027.0.0-ballot)](StructureDefinition-mii-pr-kardio-ekg-referenz.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Observation.category
* The element 1 is sliced based on the value of Observation.code.coding
* The element 1 is sliced based on the value of Observation.value[x]
* The element 1 is sliced based on the value of Observation.derivedFrom

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-kardio-ekg-annotation.csv), [Excel](../StructureDefinition-mii-pr-kardio-ekg-annotation.xlsx), [Schematron](../StructureDefinition-mii-pr-kardio-ekg-annotation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-kardio-ekg-annotation",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation",
  "version" : "2027.0.0-ballot",
  "name" : "MII_PR_Kardio_EKG_Annotation",
  "title" : "MII PR Kardio EKG Annotation",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06",
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
  "description" : "Profil zur Erfassung von Annotationen, z.B. Messergebnisse und Interpretationen, eines EKG.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
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
        "key" : "mii-inv-kardio-dataabsentreason",
        "severity" : "error",
        "human" : "If there is no Observation.value, a dataAbsentReason must be given.",
        "expression" : "value.exists().not() implies dataAbsentReason.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-annotation|2027.0.0-ballot"
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "short" : "EKG-Durchführung, aus der die Annotation stammt",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-durchfuehrung|2027.0.0-ballot"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
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
      "id" : "Observation.category:vital-signs",
      "path" : "Observation.category",
      "sliceName" : "vital-signs",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
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
          "type" : "pattern",
          "path" : "system"
        }],
        "rules" : "open"
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
      "id" : "Observation.code.coding:mdc",
      "path" : "Observation.code.coding",
      "sliceName" : "mdc",
      "short" : "ISO/IEEE 11073-10101 (MDC) Code der Annotation",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-metriken-ekg-annotationen-mdc|2027.0.0-ballot"
      }
    },
    {
      "id" : "Observation.code.coding:mdc.system",
      "path" : "Observation.code.coding.system",
      "patternUri" : "urn:iso:std:iso:11073:10101"
    },
    {
      "id" : "Observation.code.coding:sct",
      "path" : "Observation.code.coding",
      "sliceName" : "sct",
      "short" : "Optionaler SNOMED CT Code der Annotation (Observable entity)",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-annotation-snomedct|2027.0.0-ballot"
      }
    },
    {
      "id" : "Observation.code.coding:sct.system",
      "path" : "Observation.code.coding.system",
      "patternUri" : "http://snomed.info/sct"
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
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Messwert mit UCUM-Einheit (z.B. ms, uV, deg, /min)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.unit",
      "path" : "Observation.value[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.system",
      "path" : "Observation.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity.code",
      "path" : "Observation.value[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueString",
      "path" : "Observation.value[x]",
      "sliceName" : "valueString",
      "short" : "Freitext-Annotation bzw. Befundtext (z.B. MDC_ECG_INTERPRETATION)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "EKG-Gerät bzw. -Kanal, auf das/den sich die Annotation bezieht",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-geraet|2027.0.0-ballot",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-kanal|2027.0.0-ballot"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom:document",
      "path" : "Observation.derivedFrom",
      "sliceName" : "document",
      "short" : "Referenz auf die zugrundeliegenden EKG-Daten",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz|2027.0.0-ballot"]
      }],
      "mustSupport" : true
    }]
  }
}

```
