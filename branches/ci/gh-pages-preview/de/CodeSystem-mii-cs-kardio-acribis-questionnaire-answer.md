# MII CS Kardio ACRIBiS Questionnaire Answer - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Kardio ACRIBiS Questionnaire Answer**

## CodeSystem: MII CS Kardio ACRIBiS Questionnaire Answer 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-09-03 | *Maschinenlesbarer Name*:MII_CS_Kardio_Acribis_Questionnaire_Answer |

 
Questionnaire-lokale Antwortcodes für den ACRIBiS Follow-Up-Fragebogen. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-kardio-acribis-questionnaire-answer",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CodeSystem/mii-cs-kardio-acribis-questionnaire-answer",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Kardio_Acribis_Questionnaire_Answer",
  "title" : "MII CS Kardio ACRIBiS Questionnaire Answer",
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
  "description" : "Questionnaire-lokale Antwortcodes für den ACRIBiS Follow-Up-Fragebogen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "276"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "respondent_patient",
    "display" : "Patient/Patientin"
  },
  {
    "code" : "respondent_relative",
    "display" : "Angehöriger/Angehörige"
  },
  {
    "code" : "respondent_physician",
    "display" : "Arzt/Ärztin"
  },
  {
    "code" : "respondent_other",
    "display" : "Andere Person"
  },
  {
    "code" : "written_follow_up",
    "display" : "Schriftliches Follow-Up (Brief/E-Mail/App, ggf. telefonisch)"
  },
  {
    "code" : "verbal_follow_up",
    "display" : "Telefonisches Follow-Up (Telefon, ggf. schriftlich)"
  },
  {
    "code" : "cerebral_hemorrhage_intracerebral_or_subarachnoid",
    "display" : "Hirnblutung (intrazerebral oder subarachnoidal)"
  },
  {
    "code" : "other_cardiovascular_cause",
    "display" : "Andere Herz-Kreislauf bedingte Ursache"
  }]
}

```
