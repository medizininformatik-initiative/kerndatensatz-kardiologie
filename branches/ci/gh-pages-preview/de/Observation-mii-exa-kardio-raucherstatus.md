# MII EXA Kardio Raucherstatus - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio Raucherstatus**

## Beispiel Observation: MII EXA Kardio Raucherstatus



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-raucherstatus",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-observation-rauchen"]
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
  },
  {
    "resourceType" : "Encounter",
    "id" : "Beispielfall",
    "language" : "de-DE",
    "status" : "finished",
    "class" : {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "version" : "10.0.0",
      "code" : "IMP"
    },
    "subject" : {
      "reference" : "#Beispielpatient"
    },
    "period" : {
      "start" : "2023-12-01T10:00:00+01:00",
      "end" : "2023-12-03T11:00:00+01:00"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "social-history",
      "display" : "Social History"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "72166-2",
      "display" : "Raucherstatus"
    }]
  },
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "encounter" : {
    "reference" : "#Beispielfall"
  },
  "effectiveDateTime" : "2023-12-01",
  "performer" : [{
    "display" : "Beispielkardiologe"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "LA18976-3",
      "display" : "Current every day smoker"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "401201003",
        "display" : "Cigarette pack-years"
      }]
    },
    "valueQuantity" : {
      "value" : 35.5,
      "unit" : "{pack-years}",
      "system" : "http://unitsofmeasure.org",
      "code" : "{pack-years}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "version" : "2.82",
        "code" : "63640-7"
      }]
    },
    "valueQuantity" : {
      "value" : 1,
      "unit" : "{cigarettes-per-day}",
      "system" : "http://unitsofmeasure.org",
      "code" : "{cigarettes-per-day}"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "266929003"
      }]
    },
    "valueDateTime" : "2025-01-31"
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "266929003"
      }]
    },
    "valueQuantity" : {
      "value" : 19,
      "unit" : "year",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
        "code" : "228487000"
      }]
    },
    "valueQuantity" : {
      "value" : 35.5,
      "comparator" : "<=",
      "unit" : "year",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  }]
}

```
