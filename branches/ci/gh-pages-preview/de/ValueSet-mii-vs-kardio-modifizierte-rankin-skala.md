# MII VS Kardio Modifizierte Rankin Skala - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Modifizierte Rankin Skala**

## ValueSet: MII VS Kardio Modifizierte Rankin Skala 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-modifizierte-rankin-skala | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-05 | *Maschinenlesbarer Name*:MII_VS_Kardio_Modifizierte_Rankin_Skala |
| **Copyright/Rechtliches**: Public Domain | |

 
Stufen der modifizierten Rankin-Skala 

 **References** 

* [MII PR Kardio Score Modifizierte Rankin Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-modifizierte-rankin-skala",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-modifizierte-rankin-skala",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Modifizierte_Rankin_Skala",
  "title" : "MII VS Kardio Modifizierte Rankin Skala",
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
  "description" : "Stufen der modifizierten Rankin-Skala",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "Public Domain",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-modifizierte-rankin-skala",
      "version" : "2027.0.0-ballot.rc1"
    }]
  }
}

```
