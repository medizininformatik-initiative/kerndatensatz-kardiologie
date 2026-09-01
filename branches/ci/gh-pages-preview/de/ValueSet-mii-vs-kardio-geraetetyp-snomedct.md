# MII VS Kardio Gerätetyp [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Gerätetyp [SNOMED CT]**

## ValueSet: MII VS Kardio Gerätetyp [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraetetyp-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-05 | *Maschinenlesbarer Name*:MII_VS_Kardio_Geraetetyp_SNOMEDCT |

 
Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher und ventrikuläres Unterstützungssystem ab. 

 **References** 

* [MII PR Kardio Device](StructureDefinition-mii-pr-kardio-device.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-geraetetyp-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-geraetetyp-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Geraetetyp_SNOMEDCT",
  "title" : "MII VS Kardio Gerätetyp [SNOMED CT]",
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
  "description" : "Dieses Value Set bildet die Gerätetypen implantierter Kardioverter-Defibrillator, Herzschrittmacher und ventrikuläres Unterstützungssystem ab.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "72506001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "706004007"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "360064003"
      }]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "version" : "1.0.0",
      "concept" : [{
        "code" : "asked-unknown"
      }]
    }]
  }
}

```
