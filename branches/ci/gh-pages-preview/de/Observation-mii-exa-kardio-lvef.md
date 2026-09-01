# MII EXA Kardio LVEF - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio LVEF**

## Beispiel Observation: MII EXA Kardio LVEF

Language: de

Profile: [MII PR Kardio Linksventrikulaere Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.md)

**identifier**: `http://hospital.demo.org/observation-lvef`/lvef-123456

**basedOn**: Echokardiographie: Beispielanforderung

**partOf**: Echokardiographie: Beispieluntersuchung

**status**: Final

**category**: Imaging

**code**: Linksventrikuläre Ejektionsfraktion

**subject**: Beispielpatient

**encounter**: Beispielfall

**effective**: 2025-05-12 10:15:00+0100

**performer**: Beispielarzt

**value**: 55 % (Details: UCUM code% = '%')

**interpretation**: Normal

**bodySite**: Linker Ventrikel

**method**: Echokardiographie

**device**: Philips EPIQ CVx Ultrasound System

> **referenceRange****low**: 50 % (Details: UCUM code% = '%')**text**: Normal

> **referenceRange****low**: 41 % (Details: UCUM code% = '%')**high**: 49 % (Details: UCUM code% = '%')**text**: Mildly reduced

> **referenceRange****high**: 40 % (Details: UCUM code% = '%')**text**: Reduced



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-kardio-lvef",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-linksventrikulaere-ejektionsfraktion"]
  },
  "language" : "de",
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
    "display" : "Beispielpatient"
  },
  "encounter" : {
    "display" : "Beispielfall"
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
