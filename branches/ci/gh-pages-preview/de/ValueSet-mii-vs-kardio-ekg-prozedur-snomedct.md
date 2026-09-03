# MII VS Kardio EKG Prozedur [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio EKG Prozedur [SNOMED CT]**

## ValueSet: MII VS Kardio EKG Prozedur [SNOMED CT] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-prozedur-snomedct | *Version*:2027.0.0-ballot.rc1 |
| Draft Stand: 2025-09-30 | *Maschinenlesbarer Name*:MII_VS_Kardio_EKG_Prozedur_SNOMEDCT |

 
SNOMED CT Codes für verschieden EKG-Prozeduren. 

 **References** 

* [MII PR Kardio EKG Durchführung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-ekg-prozedur-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-prozedur-snomedct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_EKG_Prozedur_SNOMEDCT",
  "title" : "MII VS Kardio EKG Prozedur [SNOMED CT]",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-09-30",
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
  "description" : "SNOMED CT Codes für verschieden EKG-Prozeduren.",
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
        "value" : "29303009"
      }]
    }]
  }
}

```
