# MII VS Kardio Nein Unbekannt - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Nein Unbekannt**

## ValueSet: MII VS Kardio Nein Unbekannt 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nein-unbekannt | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-05 | *Maschinenlesbarer Name*:MII_VS_Kardio_Nein_Unbekannt |

 
ValueSet mit Codes zum Abbilden des anamnestischen Nichtvorliegens einer Diagnose, bzw. Prozedur, oder Unklarheit darüber. 

 **References** 

* [MII PR Kardio Diagnose Prozedur Nein Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-nein-unbekannt",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nein-unbekannt",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Nein_Unbekannt",
  "title" : "MII VS Kardio Nein Unbekannt",
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
  "description" : "ValueSet mit Codes zum Abbilden des anamnestischen Nichtvorliegens einer Diagnose, bzw. Prozedur, oder Unklarheit darüber.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
      "version" : "3.0.0",
      "concept" : [{
        "code" : "N"
      },
      {
        "code" : "UNK"
      },
      {
        "code" : "NASK"
      },
      {
        "code" : "ASKU"
      }]
    }]
  }
}

```
