# MII CS Kardio Supplement [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Kardio Supplement [SNOMED CT]**

## CodeSystem: MII CS Kardio Supplement [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-supplement-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-12-05 | *Maschinenlesbarer Name*:MII_CS_Kardio_Supplement_SNOMEDCT |

 
Supplement mit post-koordinierenden SNOMED CT-Codes aus dem Modul Kardiologie. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT]](ValueSet-mii-vs-kardio-extended-mii-diagnosecodes-snomed.md)
* [MII VS Kardio Klappenvitium [SNOMED CT]](ValueSet-mii-vs-kardio-klappenvitium-snomedct.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-kardio-supplement-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-supplement-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Kardio_Supplement_SNOMEDCT",
  "title" : "MII CS Kardio Supplement [SNOMED CT]",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-05",
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
  "description" : "Supplement mit post-koordinierenden SNOMED CT-Codes aus dem Modul Kardiologie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "content" : "supplement",
  "supplements" : "http://snomed.info/sct|http://snomed.info/sct/900000000000207008/version/20250701",
  "concept" : [{
    "code" : "368009:{116676008=49755003,363698007=17401000},{246112005=24484000}",
    "display" : "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Morphologically abnormal structure|,363698007|Finding site|=17401000|Cardiac valve structure|},{246112005|Severity|=24484000|Severe|}"
  },
  {
    "code" : "73544002:{260507000=260519008}",
    "display" : "73544002|Operation on heart valve|:{260507000|Access|=260519008|Transcatheter approach|}"
  },
  {
    "code" : "64572001:{116676008=50960005,47429007=131148009,42752001=789750003,246112005=24484000}",
    "display" : "64572001|Disease|:{116676008|Associated morphology|=50960005|Hemorrhage|,47429007|Associated with|=131148009|Bleeding|,42752001|Due to|=789750003|Spontaneous event|,246112005|Severity|=24484000|Severe|}"
  }]
}

```
