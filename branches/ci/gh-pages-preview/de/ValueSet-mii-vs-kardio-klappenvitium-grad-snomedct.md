# MII VS Kardio Klappenvitium Grad [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Klappenvitium Grad [SNOMED CT]**

## ValueSet: MII VS Kardio Klappenvitium Grad [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-grad-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-18 | *Maschinenlesbarer Name*:MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT |

 
SNOMED CT Codes für den Grad Klappenerkrankungen 

 **References** 

* [MII PR Kardio Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-klappenvitium-grad-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-grad-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT",
  "title" : "MII VS Kardio Klappenvitium Grad [SNOMED CT]",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-09-18",
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
  "description" : "SNOMED CT Codes für den Grad Klappenerkrankungen",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "1157272001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "422892001"
      }]
    }]
  }
}

```
