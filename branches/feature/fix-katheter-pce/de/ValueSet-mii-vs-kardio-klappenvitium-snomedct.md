# MII VS Kardio Klappenvitium [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Klappenvitium [SNOMED CT]**

## ValueSet: MII VS Kardio Klappenvitium [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-snomedct | *Version*:2027.0.0-ballot |
| Active Stand: 2025-09-16 | *Maschinenlesbarer Name*:MII_VS_Kardio_Klappenvitium_SNOMEDCT |

 
SNOMED CT Codes für Klappenerkrankungen 

 **References** 

* [MII PR Kardio Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-klappenvitium-snomedct",
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-supplement",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-supplement-snomedct|2027.0.0-ballot"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-klappenvitium-snomedct",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Kardio_Klappenvitium_SNOMEDCT",
  "title" : "MII VS Kardio Klappenvitium [SNOMED CT]",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-09-16",
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
  "description" : "SNOMED CT Codes für Klappenerkrankungen",
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
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "368009"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "concept" : [{
        "code" : "368009:{116676008=49755003,363698007=17401000},{246112005=24484000}"
      }]
    }]
  }
}

```
