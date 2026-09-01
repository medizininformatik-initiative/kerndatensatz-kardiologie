# MII VS Kardio Metriken EKG Annotationen [MDC] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Metriken EKG Annotationen [MDC]**

## ValueSet: MII VS Kardio Metriken EKG Annotationen [MDC] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-metriken-ekg-annotationen-mdc | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-07-30 | *Maschinenlesbarer Name*:MII_VS_Kardio_Metriken_EKG_Annotationen_MDC |

 
ISO/IEEE 11073 Codes für Metriken (Part 2) und EKG Annotationen (Part 10) 

 **References** 

* [MII PR Kardio EKG Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-metriken-ekg-annotationen-mdc",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-metriken-ekg-annotationen-mdc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Metriken_EKG_Annotationen_MDC",
  "title" : "MII VS Kardio Metriken EKG Annotationen [MDC]",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-07-30",
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
  "description" : "ISO/IEEE 11073 Codes für Metriken (Part 2) und EKG Annotationen (Part 10)",
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
        "value" : "2"
      }]
    },
    {
      "system" : "urn:iso:std:iso:11073:10101",
      "filter" : [{
        "property" : "partition",
        "op" : "=",
        "value" : "10"
      }]
    }]
  }
}

```
