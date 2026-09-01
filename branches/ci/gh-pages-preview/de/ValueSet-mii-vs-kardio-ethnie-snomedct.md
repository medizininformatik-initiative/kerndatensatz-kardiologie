# MII VS Kardio Ethnie [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Ethnie [SNOMED CT]**

## ValueSet: MII VS Kardio Ethnie [SNOMED CT] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ethnie-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-08-12 | *Maschinenlesbarer Name*:MII_VS_Kardio_Ethnie_SNOMEDCT |

 
SNOMED CT Codes für die Ethnie (in SNOMED CT derzeit als "racial group") im Kerndatensatz Kardiologie 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-ethnie-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ethnie-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Ethnie_SNOMEDCT",
  "title" : "MII VS Kardio Ethnie [SNOMED CT]",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-08-12",
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
  "description" : "SNOMED CT Codes für die Ethnie (in SNOMED CT derzeit als \"racial group\") im Kerndatensatz Kardiologie",
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
        "code" : "413773004"
      },
      {
        "code" : "413464008"
      },
      {
        "code" : "74964007"
      }]
    }]
  }
}

```
