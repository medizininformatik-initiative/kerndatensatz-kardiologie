# MII VS Kardio Extended Condition Severity [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Extended Condition Severity [SNOMED CT]**

## ValueSet: MII VS Kardio Extended Condition Severity [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-condition-severity-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT |

 
An extended ValueSet including standard condition severity and SNOMED CT code 42796001 (End-stage) 

 **References** 

* [MII PR Kardio Diagnose](StructureDefinition-mii-pr-kardio-diagnose.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-extended-condition-severity-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-condition-severity-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT",
  "title" : "MII VS Kardio Extended Condition Severity [SNOMED CT]",
  "status" : "active",
  "experimental" : false,
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
  "description" : "An extended ValueSet including standard condition severity and SNOMED CT code 42796001 (End-stage)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "24484000"
      },
      {
        "code" : "6736007"
      },
      {
        "code" : "255604002"
      },
      {
        "code" : "42796001"
      },
      {
        "code" : "261665006"
      }]
    }]
  }
}

```
