# MII VS Kardio EKG Kanäle [MDC] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio EKG Kanäle [MDC]**

## ValueSet: MII VS Kardio EKG Kanäle [MDC] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-kanaele-mdc | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-07-09 | *Maschinenlesbarer Name*:MII_VS_Kardio_EKG_Kanaele_MDC |

 
ISO/IEEE 11073-10101 Codes für EKG Kanäle 

 **References** 

* [MII PR Kardio EKG Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-ekg-kanaele-mdc",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-kanaele-mdc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_EKG_Kanaele_MDC",
  "title" : "MII VS Kardio EKG Kanäle [MDC]",
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
  "description" : "ISO/IEEE 11073-10101 Codes für EKG Kanäle",
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
        "property" : "code",
        "op" : "regex",
        "value" : "(13107[2-9])|(1310[89][0-9])|(1311[0-9][0-9])|(1312[0-4][0-9])|(13125[0-6])"
      }]
    }]
  }
}

```
