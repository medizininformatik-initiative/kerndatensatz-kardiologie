# MII VS Kardio Kardiale Devicemimplantation [OPS] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Kardiale Devicemimplantation [OPS]**

## ValueSet: MII VS Kardio Kardiale Devicemimplantation [OPS] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-kardiale-deviceimplantation-ops | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-04-17 | *Maschinenlesbarer Name*:MII_VS_Kardio_Kardiale_Deviceimplantation_OPS |

 
Dieses Value Set bildet die Implantation der kardialen Devices Kardioverter-Defibrillator (ICD), Herzschrittmacher zur kardialen Resynchronationstherapie (CRT) und ventrikuläre Unterstützungssysteme ab (VAD). 

 **References** 

* [MII PR Kardio Kardiale Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-kardiale-deviceimplantation-ops",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-kardiale-deviceimplantation-ops",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Kardiale_Deviceimplantation_OPS",
  "title" : "MII VS Kardio Kardiale Devicemimplantation [OPS]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-17",
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
  "description" : "Dieses Value Set bildet die Implantation der kardialen Devices Kardioverter-Defibrillator (ICD), Herzschrittmacher zur kardialen Resynchronationstherapie (CRT) und ventrikuläre Unterstützungssysteme ab (VAD).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "purpose" : "Codes aus diesem Value Set können in einer Prozedur die Implantation eines kardialen Devices in der Kardiologie spezifizieren.",
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "5-376"
      }]
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "5-377"
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
