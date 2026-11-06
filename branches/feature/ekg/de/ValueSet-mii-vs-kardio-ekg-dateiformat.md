# MII VS Kardio EKG Dateiformat - MII IG Modul Kardio DE v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Kardio EKG Dateiformat**

## ValueSet: MII VS Kardio EKG Dateiformat (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-dateiformat | *Version*:2027.0.0-ballot |
| Draft Stand: 2026-11-06 | *Maschinenlesbarer Name*:MII_VS_Kardio_EKG_Dateiformat |

 
MIME-Types für Formate, in denen referenzierte EKG-Daten vorliegen können (z.B. DICOM Waveform, HL7 aECG als XML). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-kardio-ekg-dateiformat",
  "language" : "de",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/ValueSet/mii-vs-kardio-ekg-dateiformat",
  "version" : "2027.0.0-ballot",
  "name" : "MII_VS_Kardio_EKG_Dateiformat",
  "title" : "MII VS Kardio EKG Dateiformat",
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
  "description" : "MIME-Types für Formate, in denen referenzierte EKG-Daten vorliegen können (z.B. DICOM Waveform, HL7 aECG als XML).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:bcp:13",
      "version" : "6.0.0",
      "concept" : [{
        "code" : "application/dicom",
        "display" : "DICOM"
      },
      {
        "code" : "application/xml",
        "display" : "XML (z.B. HL7 aECG)"
      }]
    }]
  }
}

```
