# MII VS Kardio Geräteprogrammierung [MDC] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Geräteprogrammierung [MDC]**

## ValueSet: MII VS Kardio Geräteprogrammierung [MDC] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraeteprogrammierung-mdc | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-05 | *Maschinenlesbarer Name*:MII_VS_Kardio_Geraeteprogrammierung_MDC |

 
Dieses Value Set bildet die Programmierung eines implantierten Gerätes in der Kardiologie ab. Dazu werden Codes der ISO/IEEE 11073-10101 Nomenclature verwendet. 

 **References** 

* [MII PR Kardio Geräteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-geraeteprogrammierung-mdc",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraeteprogrammierung-mdc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Geraeteprogrammierung_MDC",
  "title" : "MII VS Kardio Geräteprogrammierung [MDC]",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-09-05",
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
  "description" : "Dieses Value Set bildet die Programmierung eines implantierten Gerätes in der Kardiologie ab.\nDazu werden Codes der ISO/IEEE 11073-10101 Nomenclature verwendet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "purpose" : "Mit Codes aus diesem Valueset soll abgebildet werden, ob es sich um einen AAI-, VVI- oder DDD-Schrittmacher handelt, falls das bekannt ist.",
  "compose" : {
    "include" : [{
      "system" : "urn:iso:std:iso:11073:10101",
      "concept" : [{
        "code" : "754753"
      },
      {
        "code" : "754773"
      },
      {
        "code" : "754760"
      },
      {
        "code" : "754790"
      }]
    }]
  }
}

```
