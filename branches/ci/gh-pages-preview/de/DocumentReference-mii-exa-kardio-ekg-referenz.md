# MII EXA Kardio EKG Referenz - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Kardio EKG Referenz**

## Beispiel DocumentReference: MII EXA Kardio EKG Referenz

Language: de

Profile: [MII PR Kardio EKG Referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.md)

**status**: Current

**type**: EKG study

**subject**: Beispielpatient

**date**: 2025-07-17 16:41:22+0200

**author**: [Device: status = active; manufacturer = Mortara Instrument, Inc.; type = MDC_DEV_ECG_MDS](Device-mii-exa-kardio-ekg-geraet-mortara.md)

> **content**

### Attachments

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | application/dicom | [https://example.com/EKGs/beispiel-ekg](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=https://example.com/EKGs/beispiel-ekg) | Beispiel EKG an einem anteren Ort |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "mii-exa-kardio-ekg-referenz",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-ekg-referenz"]
  },
  "language" : "de",
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11524-6",
      "display" : "EKG study"
    }]
  },
  "subject" : {
    "display" : "Beispielpatient"
  },
  "date" : "2025-07-17T16:41:22+02:00",
  "author" : [{
    "reference" : "Device/mii-exa-kardio-ekg-geraet-mortara"
  }],
  "content" : [{
    "attachment" : {
      "contentType" : "application/dicom",
      "url" : "https://example.com/EKGs/beispiel-ekg",
      "title" : "Beispiel EKG an einem anteren Ort"
    }
  }]
}

```
