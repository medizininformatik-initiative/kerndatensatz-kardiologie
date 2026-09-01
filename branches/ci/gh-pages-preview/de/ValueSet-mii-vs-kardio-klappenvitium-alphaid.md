# MII VS Kardio Klappenvitium [ALPHA-ID] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Klappenvitium [ALPHA-ID]**

## ValueSet: MII VS Kardio Klappenvitium [ALPHA-ID] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-alphaid | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-06-12 | *Maschinenlesbarer Name*:MII_VS_Kardio_Klappenvitium_ALPHAID |

 
Alpha-ID-Codes für Klappenerkrankungen 

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
  "id" : "mii-vs-kardio-klappenvitium-alphaid",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-alphaid",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Klappenvitium_ALPHAID",
  "title" : "MII VS Kardio Klappenvitium [ALPHA-ID]",
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
  "description" : "Alpha-ID-Codes für Klappenerkrankungen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I05.0,I05.1,I05.2,I05.8,I05.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I06.0,I06.1,I06.2,I07.8,I06.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I07.0,I07.1,I07.2,I07.8,I07.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I08.0,I08.1,I08.2,I08.3,I08.8,I08.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "=",
        "value" : "I09.8"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I34.0,I34.1,I34.2,I34.8,I34.80,I34.88,I34.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I35.0,I35.1,I35.2,I35.8,I35.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I36.0,I36.1,I36.2,I36.8,I36.9"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
      "filter" : [{
        "property" : "icd_10_primaer",
        "op" : "in",
        "value" : "I37.0,I37.1,I37.2,I37.8,I37.9"
      }]
    }]
  }
}

```
