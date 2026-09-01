# MII CS Kardio Lebensmittelpunkt - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Kardio Lebensmittelpunkt**

## CodeSystem: MII CS Kardio Lebensmittelpunkt (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-lebensmittelpunkt | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-01-30 | *Maschinenlesbarer Name*:MII_CS_Kardio_Lebensmittelpunkt |

 
Lebensmittelpunkt des Patienten 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Kardio Lebensmittelpunkt [M49]](ValueSet-mii-vs-kardio-lebensmittelpunkt-m49.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-kardio-lebensmittelpunkt",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-lebensmittelpunkt",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Kardio_Lebensmittelpunkt",
  "title" : "MII CS Kardio Lebensmittelpunkt",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-01-30",
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
  "description" : "Lebensmittelpunkt des Patienten",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "purpose" : "Dieses Code System bildet die aktuellen Lebensmittelpunkt des Patienten unabhängig von seiner Herkunft ab. Damit wird der Parameter 'Geographic region' des SMART-REACH-Scores mit der Ergänzung Deutschland abgebildet.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "ao",
    "display" : "Anderer Ort"
  }]
}

```
