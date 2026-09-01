# MII VS Kardio Lebensmittelpunkt [M49] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Lebensmittelpunkt [M49]**

## ValueSet: MII VS Kardio Lebensmittelpunkt [M49] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-lebensmittelpunkt-m49 | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-03-03 | *Maschinenlesbarer Name*:MII_VS_Kardio_Lebensmittelpunkt_M49 |

 
Dieses Value Set bildet den aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-lebensmittelpunkt-m49",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-lebensmittelpunkt-m49",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Lebensmittelpunkt_M49",
  "title" : "MII VS Kardio Lebensmittelpunkt [M49]",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-03-03",
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
  "description" : "Dieses Value Set bildet den aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "concept" : [{
        "code" : "528"
      },
      {
        "code" : "276"
      },
      {
        "code" : "155"
      },
      {
        "code" : "021"
      }]
    },
    {
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-lebensmittelpunkt",
      "version" : "2027.0.0-ballot.rc1",
      "concept" : [{
        "code" : "ao"
      }]
    }]
  }
}

```
