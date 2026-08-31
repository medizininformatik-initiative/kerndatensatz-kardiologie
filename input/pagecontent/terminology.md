Das Kardiologie-Modul verwendet eine Vielzahl von Codesystemen und ValueSets zur standardisierten Kodierung von kardiovaskulären Daten.

## CodeSysteme

| CodeSystem | URL | Version | Verwendung |
|------------|-----|---------|------------|
| SNOMED CT | http://snomed.info/sct | 2025-07-01 | Diagnosen, Prozeduren, Body Structures |
| LOINC | http://loinc.org | 2.82 | Observationen (EKG, LVEF, etc.) |
| ICD-10 GM | http://fhir.de/CodeSystem/bfarm/icd-10-gm | 2025 | Diagnosen (Kardiale Erkrankungen) |
| OPS | http://fhir.de/CodeSystem/bfarm/ops | 2026 | Prozeduren (Device-Implantationen) |
| ATC | http://fhir.de/CodeSystem/bfarm/atc | 2026 | Medikamente |
| MDC (ISO 11073) | urn:iso:std:iso:11073:10101 | 2024-12-05 | Medical device Kategorien, EKG-Kanäle |
| UCUM | http://unitsofmeasure.org | 2024.7.1 | Einheiten (mg/dL, mmHg, etc.) |
| M49 | http://unstats.un.org/unsd/methods/m49/m49.htm | — | Geografische Regionen |

### CS-/VS-Name mit Verlinkung TODO

#### Metadaten

|                  |        |
| ---------------- |--------|
| **Beschreibung** | ...    |
| **CanonicalURL** | ...    |
| **Status**       | active |
| **Version**      | x.x.x  |
| **Herausgeber**  |        |

#### Inhalt TODO

> Darstellung

## ValueSets

{% include list-valuesets.xhtml %} <!-- Funktioniert die Verwendung dieser vorformatierten Fragmente auch mit dem MII-Template statt hl7.fhir.template2? -->

### todo-vs

| ValueSet | Id | Verwendung |
|----------|----|------------|
| MII_VS_Kardio_Allergene_SNOMEDCT | Allergene | Allergene (SNOMED) |
| MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOMEDCT | Atherosklerotische Ereignisse | Myokardinfarkt, Schlaganfall, etc. |
| MII_VS_Kardio_EKG_Kanaele_MDC | EKG-Kanäle | I, II, III, V1-V6, aVR, aVL, aVF |
| MII_VS_Kardio_EKG_Prozedur_SNOMEDCT | EKG-Prozeduren | 12-Kanal-EKG, Langzeit-EKG, etc. |
| MII_VS_Kardio_Ethnie_SNOMEDCT | Ethnie | Ethnische Gruppen |
| MII_VS_Kardio_Extended_Condition_Severity_SNOMEDCT | Schweregrad | Mild, Moderate, Severe |
| MII_VS_Kardio_Extended_MII_DiagnoseCodes_SNOMED | Diagnosecodes | Erweiterung der MII Diagnosecodes |
| MII_VS_Kardio_Geraeteprogrammierung_MDC | Geräteprogrammierung | VVI, DDD, AAI, etc. |
| MII_VS_Kardio_Geraetetyp_SNOMEDCT | Gerätetypen | Schrittmacher, ICD, CRT, LVAD |
| MII_VS_Kardio_Gewichtsveraenderung_SNOMEDCT | Gewichtsveränderung | Zunahme, Abnahme |
| MII_VS_Kardio_Kardiale_Deviceimplantation_Koerperstelle_SNOMEDCT | Implantationsstelle | Herz, linker Ventrikel, rechter Ventrikel |
| MII_VS_Kardio_Kardiale_Deviceimplantation_OPS | Implantations-OPS | OPS-Codes für Device-Implantationen |
| MII_VS_Kardio_Kardiale_Deviceimplantation_SNOMEDCT | Implantations-SNOMED | SNOMED-Codes für Device-Implantationen |
| MII_VS_Kardio_Klappenvitium_ALPHAID | Klappenvitium (Alpha-ID) | Kodierung von Klappenerkrankungen |
| MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT | Vitium-Grad | I-IV |
| MII_VS_Kardio_Klappenvitium_ICD | Klappenvitium (ICD) | ICD-Kodierung |
| MII_VS_Kardio_Klappenvitium_SNOMEDCT | Klappenvitium (SNOMED) | SNOMED-Codes für Klappenerkrankungen |
| MII_VS_Kardio_Lebensmittelpunkt_M49 | Lebensmittelpunkt | Zentrum der Lebensaktivitäten |
| MII_VS_Kardio_Metriken_EKG_Annotationen_MDC | EKG-Metriken | Heart Rate, Rhythmus, etc. |
| MII_VS_Kardio_Modifizierte_Rankin_Skala | mRS | 0-6 |
| MII_VS_Kardio_NYHA_Klassen_SNOMEDCT | NYHA-Klassen | I-IV |
| MII_VS_Kardio_Nein_Unbekannt | Nein/Unbekannt | Ausschluss oder Unbekanntheit |
| MII_VS_Kardio_Objekte_Geraete_MDC | Geräte-Objekte | EKG-Geräte, Devices |

## Verwendete externe Codesysteme

{% include list-simple-codesystems.xhtml %}

### todo-cs

| Codesystem | URL | Verwendung |
|---|---|---|
| ISiK (gematik) | gematik-ISiK-Kodierungen | ISiK-spezifische Codierungen |
| V2-0203 | http://terminology.hl7.org/CodeSystem/v2-0203 | contact-role (z.B. Arzt, Familienangehöriger) |
| V2-0532 | http://terminology.hl7.org/CodeSystem/v2-0532 | Yes/No/Unknown (Raucherstatus) |
| Condition-Clinical | http://terminology.hl7.org/CodeSystem/condition-clinical | Diagnosestatus (Active, Inactive, etc.) |
| Condition-Ver-Status | http://terminology.hl7.org/CodeSystem/condition-ver-status | Verifikationsstatus |
| Condition-Category | http://terminology.hl7.org/CodeSystem/condition-category | Kategorie (Problems, Diagnose, etc.) |
| Observation-Category | http://terminology.hl7.org/CodeSystem/observation-category | Kategorie (vital-signs, procedure, etc.) |
