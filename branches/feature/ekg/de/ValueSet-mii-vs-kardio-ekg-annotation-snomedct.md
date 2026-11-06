# MII VS Kardio EKG Annotation [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio EKG Annotation [SNOMED CT]**

## ValueSet: MII VS Kardio EKG Annotation [SNOMED CT] (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-annotation-snomedct | *Version*:2027.0.0-ballot |
| Draft Stand: 2026-11-06 | *Maschinenlesbarer Name*:MII_VS_Kardio_EKG_Annotation_SNOMEDCT |

 

| | | |
| :--- | :--- | :--- |
| SNOMED CT Codes (Observable entity) zur zusätzlichen Codierung von EKG-Annotationen, z.B. 251208001 | QRS complex duration | . |

 

 **References** 

* [MII PR Kardio EKG Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-ekg-annotation-snomedct",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-annotation-snomedct",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Kardio_EKG_Annotation_SNOMEDCT",
  "title" : "MII VS Kardio EKG Annotation [SNOMED CT]",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-06",
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
  "description" : "SNOMED CT Codes (Observable entity) zur zusätzlichen Codierung von EKG-Annotationen, z.B. 251208001 |QRS complex duration|.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "363787002"
      }]
    }]
  }
}

```
