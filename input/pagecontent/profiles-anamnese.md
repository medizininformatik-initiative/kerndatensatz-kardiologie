# Profile: Anamnese

Die Anamnese bildet den **fachlichen Schwerpunkt des Kardiologie-Moduls**. Sie umfasst kardiologische Diagnosen, Prozeduren, Medikation sowie kardiologisch relevante Einzelangaben (Klappenvitien, Krankenhausaufenthalte, atherosklerotische Ereignisse, Allergien).

**Besonderheit:** Das Modell bildet das anamnestische Nichtvorliegen von Diagnosen oder Prozeduren explizit ab (siehe [Diagnose/Prozedur (Nein/Unbekannt)](#diagnoseprozedur-neinunbekannt)).

## Übersicht

| Profil | Resource | Kurzbeschreibung |
|---|---|---|
| [Diagnose](#diagnose) | Condition | Kardiovaskuläre Diagnosen (Myokardinfarkt, Embolie, etc.) |
| [Diagnose/Prozedur (Nein/Unbekannt)](#diagnoseprozedur-neinunbekannt) | Condition | Ausschluss oder Unbekanntheit von Diagnosen/Prozeduren |
| [Atherosklerotisches Erstereignis](#atherosklerotisches-erstereignis) | Condition | Erfassung des ersten atherosklerotischen Ereignisses |
| [Anzahl KH-Aufenthalte wg. HF](#anzahl-kh-aufenthalte-wg-hf) | Observation | Anzahl Krankenhausaufenthalte wegen Herzinsuffizienz |
| [Klappenvitium](#klappenvitium) | Condition | Erfassung von Klappenerkrankungen |

---

## Diagnose

**Profil:** [MII_PR_Kardio_Diagnose](StructureDefinition-mii-pr-kardio-diagnose.html) · **Resource:** Condition · **Id:** mii-pr-kardio-diagnose

### Beschreibung
Profil zur Abbildung einer Diagnose im Kontext des Projekts ACRIBiS.

### Kern-Elemente
* `code` — SNOMED CT oder ICD-10 GM Code für die Diagnose
* `onset[x]` — Beginndatum (dateTime)
* `verificationStatus` — Verifikationsstatus (unconfirmed, confirmed, etc.)
* `subject` — Reference(Patient)

### Wertebereiche
* **Codes:** MII_VS_Kardio_Extended_MII_DiagnoseCodes_SNOMED (erweiterte MII Diagnosecodes)
* **ICD-10-GM:** ICD-10 GM Codes für kardiale Erkrankungen (I00-I99)
* **SNOMED CT:** SNOMED CT Codes für kardiale Erkrankungen

### Verwendung
Die Diagnose kann auf verschiedene Arten erhoben werden:
* Anamnestisch durch den Patienten berichtet
* Aus medizinischen Dokumenten (Arztbriefe) extrahiert
* Strukturiert aus dem Primärsystem (z.B. Vorbehandlung)

### Mapping
* **ICD-10-GM:** I00-I99 (Kardiale Erkrankungen)
* **SNOMED CT:** 440545001 (Atherosclerosis), 22298006 (Myocardial infarction), 230690007 (Cerebral infarction)

### Beispiele
* MII_EXA_Kardio_Diagnose_Myokardinfarkt
* MII_EXA_Kardio_Diagnose_Embolischer_Gefaessverschluss

### Verwandte Profile
* Diagnose/Prozedur (Nein/Unbekannt) — für negative/unknown findings

---

## Diagnose/Prozedur (Nein/Unbekannt)

**Profil:** [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html) · **Resource:** Condition · **Id:** mii-pr-kardio-diagnose-prozedur-nein-unbekannt

### Beschreibung
Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose bzw. Prozedur, oder die Unklarheit darüber, ab.

### Hintergrund
Ein grundlegendes Problem in der FHIR-Modellierung: Fehlt ein Diagnose- oder Prozedur-Eintrag, lässt sich daraus allein nicht ableiten, ob der Sachverhalt aktiv erfragt und verneint wurde oder ob er schlicht nicht dokumentiert/erhoben wurde. **Das Fehlen von Daten ist kein Nachweis für ein Nichtvorliegen.**

Das KDS-Modul adressiert diese Herausforderung durch die explizite Abbildung des anamnestischen Nichtvorliegens.

### Kern-Elemente
* `code` — SNOMED CT Code für die abgefragte Diagnose/Prozedur
* `value[x]` — Observation-Wert (Nein/Unbekannt via MII_VS_Kardio_Nein_Unbekannt)
* `subject` — Reference(Patient)
* `recorder` / `asserter` — wer hat die Information erfragt/gegeben?

### Wertebereiche
* **Codes:** SNOMED CT Codes für Diagnosen/Prozeduren
* **Value:** MII_VS_Kardio_Nein_Unbekannt (absent, unknown, etc.)

### Verwendung
Dieses Profil sollte verwendet werden, wenn in der Anamnese explizit nachgefragt wird:
* "Hatten Sie jemals einen Myokardinfarkt?" → wenn "Nein"
* "Haben Sie bereits eine Diagnose erhalten?" → wenn "Unbekannt"

### Mapping
* **HL7 Best Practice:** Absent/Unknown observations für negative findings
* **SNOMED CT:** 261665000 (History of -) mit spezifischen Condition-Codes

### Beispiele
* Beispielfall mit anamnestischem Nichtvorliegen von Diagnose/Prozedur

---

## Atherosklerotisches Erstereignis

**Profil:** [MII_PR_Kardio_Atherosklerotisches_Erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html) · **Resource:** Condition · **Id:** mii-pr-kardio-atherosklerotisches-erstereignis

### Beschreibung
Profil zur Erfassung des Datums des ersten atherosklerotischen Ereignisses im Kontext von ACRIBiS.

### Kern-Elemente
* `code` — SNOMED CT Code für das atherosklerotische Ereignis (Myokardinfarkt, Schlaganfall, etc.)
* `onset[x]` — Datum des Ereignisses (date oder dateTime)
* `subject` — Reference(Patient)

### Wertebereiche
* **Codes:** MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOMEDCT (SNOMED CT)
* **Status:** MII_VS_Kardio_Nein_Unbekannt (Ja/Nein/Unbekannt)

### Mapping
* **SNOMED:** Atherosclerotic disease (440545001), Myocardial infarction (22298006), Cerebral infarction (230690007)

### Beispiele
* MII_EXA_Kardio_Atherosklerotisches_Erstereignis

### Verwandte Profile
* Diagnose (kardiale Diagnosen)
* Klappenvitium (weitere kardiale Diagnosen)

---

## Anzahl KH-Aufenthalte wg. HF

**Profil:** [MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html) · **Resource:** Observation · **Id:** mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf

### Beschreibung
Profil zur Erfassung der Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz in einem Zeitraum im Kontext von ACRIBiS.

### Kern-Elemente
* `value[x]` — Integer Wert (Anzahl KH-Aufenthalte)
* `effective[x]` — Zeitraum/Datum (period oder dateTime)
* `subject` — Reference(Patient)

### Wertebereiche
* **Value Integer** — Anzahl der KH-Aufenthalte (mindestens 0)
* **Effective** — Zeitraum der Erhebung (z.B. letzten 12 Monate)

### Mapping
* **SNOMED:** History of hospitalizations (273563009)
* **LOINC:** 87532-7 History of hospitalization for heart failure

### Beispiele
* MII_EXA_Kardio_Anzahl_KH_Aufenthalte_wg_HF
* MII_EXA_Kardio_Anzahl_KH_Aufenthalte_wg_HF2

### Verwandte Profile
* NYHA-Score, mod. Rankin-Skala (Scores zur Herzinsuffizienz)
* LVEF (Funktionsdiagnostik)

---

## Klappenvitium

**Profil:** [MII_PR_Kardio_Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.html) · **Resource:** Condition · **Id:** mii-pr-kardio-klappenvitium

### Beschreibung
Profil zur Abbildung einer Herzklappenerkrankung.

### Kern-Elemente
* `code` — SNOMED CT oder Alpha-ID Code für das Klappenvitium
* `severity` — Schweregrad (I-IV) via MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT
* `bodySite` — betroffene Herzklappe (aortic, mitral, tricuspidal, pulmonal)
* `subject` — Reference(Patient)

### Wertebereiche
* **Codes:**
  * MII_VS_Kardio_Klappenvitium_SNOMEDCT (SNOMED CT)
  * MII_VS_Kardio_Klappenvitium_ALPHAID (Alpha-ID)
* **Grad:** MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT (I-IV)
* **BodySite:** SNOMED CT für Klappenseiten

### Klinische Relevanz
Klappenerkrankungen sind relevante Risikofaktoren und diagnostische Marker in der Kardiologie.
Typische Klappenerkrankungen: Aortenklappenstenose, Mitralregurgitation, Trikuspidalregurgitation, Pulmonalstenose.

### Mapping
* **SNOMED CT:** 362314005 (Heart valve disorder), 429762001 (Aortic valve stenosis)
* **ICD-10:** I05-I08, I34-I38 (Klappenerkrankungen)

### Beispiele
* Beispiel für Aortenklappenstenose
* Beispiel für Mitralregurgitation

### Verwandte Profile
* Diagnose (kardiale Diagnosen)
