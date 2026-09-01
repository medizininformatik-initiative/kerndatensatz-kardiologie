# MII VS Kardio Klappenvitium [ICD 10 GM] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Klappenvitium [ICD 10 GM]**

## ValueSet: MII VS Kardio Klappenvitium [ICD 10 GM] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-icd | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-06-12 | *Maschinenlesbarer Name*:MII_VS_Kardio_Klappenvitium_ICD |

 
ICD-Codes für Klappenerkrankungen 

 **References** 

* [MII PR Kardio Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-klappenvitium-icd",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-icd",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Klappenvitium_ICD",
  "title" : "MII VS Kardio Klappenvitium [ICD 10 GM]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-12",
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
  "description" : "ICD-Codes für Klappenerkrankungen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I05"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I06"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I07"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I08"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "concept" : [{
        "code" : "I09.8"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I34"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I35"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I36"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "I37"
      }]
    }]
  }
}

```
