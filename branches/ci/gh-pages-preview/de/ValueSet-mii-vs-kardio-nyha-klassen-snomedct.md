# MII VS Kardio NYHA Klassen [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio NYHA Klassen [SNOMED CT]**

## ValueSet: MII VS Kardio NYHA Klassen [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nyha-klassen-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-05 | *Maschinenlesbarer Name*:MII_VS_Kardio_NYHA_Klassen_SNOMEDCT |
| **Copyright/Rechtliches**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. | |

 
Klassen der New York Heart Association Classification 

 **References** 

* [MII PR Kardio Score NYHA](StructureDefinition-mii-pr-kardio-score-nyha.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-nyha-klassen-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-nyha-klassen-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_NYHA_Klassen_SNOMEDCT",
  "title" : "MII VS Kardio NYHA Klassen [SNOMED CT]",
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
  "description" : "Klassen der New York Heart Association Classification",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "421518007"
      }]
    }]
  }
}

```
