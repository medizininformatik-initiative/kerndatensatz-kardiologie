# MII EXA Kardio Höhergradiges Vitium - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Höhergradiges Vitium**

## Beispiel Condition: MII EXA Kardio Höhergradiges Vitium



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-kardio-hoehergradiges-vitium",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-klappenvitium"]
  },
  "language" : "de",
  "contained" : [{
    "resourceType" : "Patient",
    "id" : "Beispielpatient",
    "language" : "de-DE",
    "identifier" : [{
      "use" : "usual",
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "MR",
          "display" : "Krankenaktennummer"
        }]
      },
      "value" : "0123456789"
    }],
    "name" : [{
      "use" : "official",
      "family" : "Mustermann",
      "given" : ["Max"]
    }],
    "gender" : "male",
    "birthDate" : "1980-01-01",
    "address" : [{
      "type" : "both",
      "line" : ["Musterstraße 1"],
      "city" : "Musterstadt",
      "postalCode" : "12345",
      "country" : "DE"
    }]
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "423343006",
      "display" : "Grade 3 on a scale of 1 to 3"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "368009:{116676008=49755003,363698007=17401000},{246112005=24484000}",
      "display" : "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Morphologically abnormal structure|,363698007|Finding site|=17401000|Cardiac valve structure|},{246112005|Severity|=24484000|Severe|}"
    }],
    "text" : "Vitium primärer Genese"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "17401000",
      "display" : "Cardiac valve structure"
    }]
  }],
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "recordedDate" : "2025-05-13",
  "recorder" : {
    "display" : "Facharzt für Kardiologie"
  },
  "asserter" : {
    "display" : "Facharzt für Kardiologie"
  }
}

```
