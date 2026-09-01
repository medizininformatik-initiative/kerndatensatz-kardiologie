# MII CS Kardio Atherosklerotisches Ereignis - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Kardio Atherosklerotisches Ereignis**

## CodeSystem: MII CS Kardio Atherosklerotisches Ereignis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-03 | *Maschinenlesbarer Name*:MII_CS_Kardio_Atherosklerotisches_Ereignis |

 
Code für ein unbestimmtes atherosklerotisches Ereignis 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Kardio Atherosklerotisches Ereignis [SNOMED CT]](ValueSet-mii-vs-kardio-atherosklerotisches-ereignis-snomedct.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-kardio-atherosklerotisches-ereignis",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-atherosklerotisches-ereignis",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Kardio_Atherosklerotisches_Ereignis",
  "title" : "MII CS Kardio Atherosklerotisches Ereignis",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-09-03",
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
  "description" : "Code für ein unbestimmtes atherosklerotisches Ereignis",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "ae",
    "display" : "Atherosklerotisches Ereignis"
  },
  {
    "code" : "eg-cv",
    "display" : "Embolischer Gefäßverschluss cerebro-vaskulär"
  }]
}

```
