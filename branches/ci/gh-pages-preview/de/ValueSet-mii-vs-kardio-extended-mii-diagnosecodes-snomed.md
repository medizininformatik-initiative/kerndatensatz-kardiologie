# MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT] - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT]**

## ValueSet: MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT] 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-mii-diagnosecodes-snomed | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-05-29 | *Maschinenlesbarer Name*:MII_VS_Kardio_Extended_MII_DiagnoseCodes_SNOMED |
| **Copyright/Rechtliches**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. | |

 
Erweiterung des MII VS Diagnose Diagnosecodes [SNOMED CT] 

 **References** 

* [MII PR Kardio Diagnose Prozedur Nein Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-extended-mii-diagnosecodes-snomed",
  "language" : "de",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/valueset-supplement",
    "valueCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-supplement-snomedct|2027.0.0-ballot.rc1"
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-extended-mii-diagnosecodes-snomed",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Kardio_Extended_MII_DiagnoseCodes_SNOMED",
  "title" : "MII VS Kardio Extended MII DiagnoseCodes [SNOMED CT]",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-29",
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
  "description" : "Erweiterung des MII VS Diagnose Diagnosecodes [SNOMED CT]",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
  "compose" : {
    "include" : [{
      "valueSet" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/ValueSet/diagnoses-sct|2026.0.1"]
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "concept" : [{
        "code" : "368009:{116676008=49755003,363698007=17401000},{246112005=24484000}"
      }]
    }]
  }
}

```
