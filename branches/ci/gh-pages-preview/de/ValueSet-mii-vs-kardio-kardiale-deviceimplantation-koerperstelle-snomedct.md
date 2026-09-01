# MII VS Kardio Kardiale Devicemimplantation Körperstelle [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Kardiale Devicemimplantation Körperstelle [SNOMED CT]**

## ValueSet: MII VS Kardio Kardiale Devicemimplantation Körperstelle [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-kardiale-deviceimplantation-koerperstelle-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-05 | *Maschinenlesbarer Name*:MII_VS_Kardio_Kardiale_Deviceimplantation_Koerperstelle_SNOMEDCT |

 
Dieses Value Set bildet die Körperstellen, an denen eine Implantation eines kardialen Devices stattfindet, ab. 

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
  "id" : "mii-vs-kardio-kardiale-deviceimplantation-koerperstelle-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-kardiale-deviceimplantation-koerperstelle-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Kardiale_Deviceimplantation_Koerperstelle_SNOMEDCT",
  "title" : "MII VS Kardio Kardiale Devicemimplantation Körperstelle [SNOMED CT]",
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
  "description" : "Dieses Value Set bildet die Körperstellen, an denen eine Implantation eines kardialen Devices stattfindet, ab.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "purpose" : "Codes aus diesem Value Set können in einer Prozedur die Körperstelle der Implantation eines kardialen Devices in der Kardiologie spezifizieren.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "80891009"
      },
      {
        "code" : "87878005"
      },
      {
        "code" : "53085002"
      }]
    }]
  }
}

```
