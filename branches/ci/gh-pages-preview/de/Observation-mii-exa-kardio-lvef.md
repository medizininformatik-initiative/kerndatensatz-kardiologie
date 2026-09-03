# MII EXA Kardio LVEF - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio LVEF**

## Beispiel Observation: MII EXA Kardio LVEF



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-lvef",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion"]
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
          "version" : "5.0.0",
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
  "identifier" : [{
    "system" : "http://hospital.demo.org/observation-lvef",
    "value" : "lvef-123456"
  }],
  "basedOn" : [{
    "display" : "Echokardiographie: Beispielanforderung"
  }],
  "partOf" : [{
    "display" : "Echokardiographie: Beispieluntersuchung"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "version" : "2.0.0",
      "code" : "imaging",
      "display" : "Imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "250908004",
      "display" : "Left ventricular ejection fraction"
    },
    {
      "system" : "http://loinc.org",
      "version" : "2.82",
      "code" : "10230-1",
      "display" : "Left ventricular ejection fraction"
    }],
    "text" : "Linksventrikuläre Ejektionsfraktion"
  },
  "subject" : {
    "reference" : "#Beispielpatient"
  },
  "encounter" : {
    "reference" : "#Beispielfall"
  },
  "effectiveDateTime" : "2025-05-12T10:15:00+01:00",
  "performer" : [{
    "display" : "Beispielarzt"
  }],
  "valueQuantity" : {
    "value" : 55,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "87878005",
      "display" : "Left cardiac ventricular structure"
    }],
    "text" : "Linker Ventrikel"
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20250701",
      "code" : "40701008",
      "display" : "Echocardiography"
    }],
    "text" : "Echokardiographie"
  },
  "device" : {
    "display" : "Philips EPIQ CVx Ultrasound System"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 50,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "text" : "Normal"
  },
  {
    "low" : {
      "value" : 41,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "high" : {
      "value" : 49,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "text" : "Mildly reduced"
  },
  {
    "high" : {
      "value" : 40,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "text" : "Reduced"
  }]
}

```
