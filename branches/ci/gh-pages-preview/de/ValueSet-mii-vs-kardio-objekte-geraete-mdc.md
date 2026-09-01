# MII VS Kardio MDC Objects Devices [MDC] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio MDC Objects Devices [MDC]**

## ValueSet: MII VS Kardio MDC Objects Devices [MDC] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-objekte-geraete-mdc | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-07-09 | *Maschinenlesbarer Name*:MII_VS_Kardio_Objekte_Geraete_MDC |

 
ISO/IEEE 11073-10101 Codes für Objekte und Geräte (Partition 1) 

 **References** 

* [MII PR Kardio EKG Gerät](StructureDefinition-mii-pr-kardio-ekg-geraet.md)
* [MII PR Kardio EKG Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-objekte-geraete-mdc",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-objekte-geraete-mdc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Objekte_Geraete_MDC",
  "title" : "MII VS Kardio MDC Objects Devices [MDC]",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-07-09",
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
  "description" : "ISO/IEEE 11073-10101 Codes für Objekte und Geräte (Partition 1)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "filter" : [{
        "property" : "partition",
        "op" : "=",
        "value" : "1"
      }]
    }]
  }
}

```
