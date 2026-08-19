# Profile: EKG-Metadaten

Diese Gruppe umfasst Metadaten und technische Informationen zu EKG-Aufnahmen.

EKG-Metadaten werden abgebildet, um die Auffindbarkeit und Abfragbarkeit von EKG-Daten über das Forschungsdatenportal zu ermöglichen. **Die Rohdaten eines EKGs werden nicht in FHIR abgebildet** (dafür gibt es DICOM), sondern Metadaten und Referenzen.

## Übersicht

| Profil | Resource | Kurzbeschreibung |
|---|---|---|
| [EKG-Durchführung](#ekg-durchfhrung) | Procedure | Durchführung eines EKGs |
| [EKG-Kanal](#ekg-kanal) | Observation | Spezifische Kanal-Beschreibung (I, II, III, etc.) |
| [EKG-Referenz](#ekg-referenz) | Observation | Referenz für EKG-Rasterung und -Kalibrierung |
| [EKG-Gerät](#ekg-gerät) | Device | Erfassung des verwendeten Geräts (z.B. Mortara) |
| [EKG-Gerätedefinition](#ekg-gerätedefinition) | DeviceDefinition | Gerätespezifische Information |
| [EKG-Annotation](#ekg-annotation) | Observation | Annotationen des EKG (z.B. Rhythmus, Blockaden) |

---

## EKG-Durchführung

**Profil:** [MII_PR_Kardio_EKG_Durchführung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.html) · **Resource:** Procedure · **Id:** mii-pr-kardio-ekg-durchfuehrung

### Beschreibung
Profil zur Erfassung der Durchführung eines EKGs.

### Kern-Elemente
* `code` — SNOMED CT Code für EKG-Durchführung
* `performed[x]` — Durchführungsdatum
* `bodySite` — Brustkorb
* `reason` — Indikation (Routine, Akutfall, etc.)
* `subject` — Reference(Patient)

### Wertebereiche
* **Prozedurcode:** MII_VS_Kardio_EKG_Prozedur_SNOMEDCT (12-Kanal-EKG, Langzeit-EKG, etc.)
* **Indikationen:** SNOMED CT oder ICD-10 (z.B. Angina pectoris, Herzrhythmusstörungen)

### EKG-Metadaten
Die EKG-Durchführung selbst wird durch weitere Ressourcen ergänzt:
* EKG_Geraet — das verwendete Gerät
* EKG_Annotation — die Auswertung
* EKG_Referenz — Referenz auf technische Spezifikationen

### Mapping
* **SNOMED CT:** 386053000 (Electrocardiographic procedure)

### Beispiele
* MII_EXA_Kardio_EKG_Durchführung

### Verwandte Profile
* EKG_Kanal — für die Einzelaufzeichnungen
* EKG_Referenz — für technische Spezifikation
* EKG_Annotation — für die Auswertung
* EKG_Geraet — für das Gerät

---

## EKG-Kanal

**Profil:** [MII_PR_Kardio_EKG_Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.html) · **Resource:** Observation · **Id:** mii-pr-kardio-ekg-kanal

### Beschreibung
Profil zur Abbildung eines EKG-Kanals (z.B. Kanal I, II, III, V1-V6, aVR, aVL, aVF).

### Kern-Elemente
* `code` — MDC Code für den Kanal
* `component.code` — Einzelmesswerte (Spannung, Zeit)
* `component.value[x]` — Messwerte (decimal)
* `device` — Reference(EKG_Geraet)
* `effective[x]` — Zeitpunkt der Aufnahme

### Wertebereiche
* **Kanal-Code:** MII_VS_Kardio_EKG_Kanaele_MDC (I, II, III, aVR, aVL, aVF, V1-V6)
* **MDC:** ISO 11073 medical device codes

### Anwendung
Jeder Kanal wird als eigenständige Observation abgebildet, die die Messwerte des Kanals enthält. Die Messwerte werden als Komponenten (`component`) gespeichert.

### Mapping
* **MDC:** 11085-1 (Lead I electrocardiogram), 11086-9 (Lead II electrocardiogram), etc.

### Beispiele
* MII_EXA_Kardio_EKG_Kanal_I
* MII_EXA_Kardio_EKG_Kanal_II
* MII_EXA_Kardio_EKG_Kanal_III

### Verwandte Profile
* EKG_Durchführung — für die ganze Aufnahme
* EKG_Annotation — für die Auswertung

---

## EKG-Referenz

**Profil:** [MII_PR_Kardio_EKG_Referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.html) · **Resource:** Observation · **Id:** mii-pr-kardio-ekg-referenz

### Beschreibung
Profil zur Referenzierung eines EKGs, dessen Rohdaten an einem anderen Ort gespeichert werden.

### Kern-Elemente
* `code` — LOINC Code für EKG-Referenz
* `hasMember` — Referenz auf die Rohdaten (z.B. DICOM)
* `component.code` — technische Spezifikationen (Samplingrate, Filterung, etc.)
* `effective[x]` — Aufzeichnungsdatum
* `device` — Reference(EKG_Geraet)

### Wertebereiche
* **Component:** MDC Codes für EKG-Metriken (Samplingrate, etc.)
* **Reference:** DICOM OID für EKG-Rohdaten

### Anwendung
Die EKG-Rohdaten selbst werden nicht in FHIR abgebildet, da sie in einem anderen Format (DICOM) vorliegen und dort besser aufgehoben sind. Das Profil referenziert diese Rohdaten und enthält Metadaten zur Aufnahme.

### Mapping
* **LOINC:** 38267-9 (Electrocardiogram [EKG] report)
* **DICOM:** EKG SOP Classes

### Beispiele
* MII_EXA_Kardio_EKG_Referenz

### Verwandte Profile
* EKG_Geraet — für das Gerät
* EKG_Annotation — für die Auswertung

---

## EKG-Gerät

**Profil:** [MII_PR_Kardio_EKG_Geraet](StructureDefinition-mii-pr-kardio-ekg-geraet.html) · **Resource:** Device · **Id:** mii-pr-kardio-ekg-geraet

### Beschreibung
Profil zur Abbildung eines EKG-Gerätes.

### Kern-Elemente
* `identifier` — Seriennummer / Geräte-ID
* `deviceName` — Gerätename (Hersteller, Modell)
* `modelNumber` — Modellnummer
* `manufacturer` — Hersteller
* `type` — Gerätetyp (EKG-Gerät)

### Wertebereiche
* **DeviceType:** SNOMED CT für EKG-Geräte
* **Hersteller:** Freitext (Mortara, GE, Philips, etc.)

### Anwendung
Das EKG-Gerät wird separat zum EKG-Referenz-Profil abgebildet. Die Verknüpfung erfolgt über `device` in EKG_Referenz und EKG_Kanal.

### Mapping
* **SNOMED CT:** 252170008 (Electrocardiograph)

### Beispiele
* MII_EXA_Kardio_EKG_Geraet_Mortara

### Verwandte Profile
* EKG_Geraetedefinition — für die Geräteeinstellungen
* EKG_Durchführung — für die Aufnahme
* EKG_Referenz — für die Referenz auf Rohdaten

---

## EKG-Gerätedefinition

**Profil:** [MII_PR_Kardio_EKG_Geraetedefinition](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.html) · **Resource:** DeviceDefinition · **Id:** mii-pr-kardio-ekg-geraetedefinition

### Beschreibung
Profil zur Abbildung einer EKG-Gerätedefinition.

### Kern-Elemente
* `deviceName` — Gerätename
* `modelNumber` — Modellnummer
* `manufacturer` — Hersteller
* `version` — Device-Version
* `property` — technische Spezifikationen (Samplingrate, Filterung, etc.)

### Wertebereiche
* **Property:** MDC Codes für EKG-Metriken (Samplingrate, etc.)
* **Hersteller:** Freitext

### Anwendung
Das DeviceDefinition-Profil beschreibt die Gerätedefinition im Gegensatz zum Device-Profil, das das physische Gerät beschreibt. DeviceDefinition wird für Geräte verwendet, die nicht physisch als Device im System repräsentiert sind.

### Mapping
* **SNOMED CT:** 252170008 (Electrocardiograph)

### Beispiele
* MII_EXA_Kardio_EKG_Geraetedefinition_Mortara

### Verwandte Profile
* EKG_Geraet — für das physische Gerät
* EKG_Durchführung — für die Aufnahme

---

## EKG-Annotation

**Profil:** [MII_PR_Kardio_EKG_Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.html) · **Resource:** Observation · **Id:** mii-pr-kardio-ekg-annotation

### Beschreibung
Profil zur Erfassung von Annotationen, z.B. Messergebnisse und Interpretationen, eines EKG.

### Kern-Elemente
* `code` — Code für die Annotation (Rhythmus, Blockaden, etc.)
* `value[x]` — Messergebnis / Interpretation
* `component.code` — Einzelmesswerte (P-QRS-T-Interpretation)
* `device` — Reference(EKG_Geraet)
* `effective[x]` — Datum der Interpretation

### Wertebereiche
* **Codes:** MII_VS_Kardio_Metriken_EKG_Annotationen_MDC
* **Typen:** Rhythmus, Blockaden, Ischämie, Hypertrophie, etc.

### Anwendung
Die EKG-Annotation enthält die automatische oder manuelle Interpretation des EKGs durch das Gerät oder einen Arzt. Sie fasst die wichtigsten Befundmerkmale zusammen.

### Mapping
* **MDC:** EKG-Annotations-Codes

### Beispiele
* MII_EXA_Kardio_EKG_Referenz (enthält Referenz auf Annotation)

### Verwandte Profile
* EKG_Durchführung — für die Aufnahme
* EKG_Kanal — für die Einzelaufzeichnungen
