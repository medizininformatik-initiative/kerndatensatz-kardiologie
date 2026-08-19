# Profile: Skalen

Diese Gruppe umfasst standardisierte klinische Skalen zur Bewertung des funktionellen Status und der Herzinsuffizienz-Schwere.

## Übersicht

| Profil | Resource | Kurzbeschreibung |
|---|---|---|
| [NYHA-Score](#nyha-score) | Observation | NYHA-Score (New York Heart Association Functional Classification) |
| [mod. Rankin-Skala (mRS)](#mod-rankin-skala-mrs) | Observation | modifizierte Rankin-Skala (mRS) |

---

## NYHA-Score

**Profil:** [MII_PR_Kardio_Score_NYHA](StructureDefinition-mii-pr-kardio-score-nyha.html) · **Resource:** Observation · **Id:** mii-pr-kardio-score-nyha

### Beschreibung
Profil zur Erfassung der Einstufung der Stadien einer Herzinsuffizienz nach der New York Heart Association.

### Kern-Elemente
* `code` — LOINC oder SNOMED CT Code für NYHA-Klasse
* `valueCodeableConcept` — NYHA-Klasse (I, II, III, IV)
* `effective[x]` — Datum der Bewertung
* `subject` — Reference(Patient)

### Wertebereiche
* **NYHA-Klassen:** MII_VS_Kardio_NYHA_Klassen_SNOMEDCT (I, II, III, IV)
* **LOINC:** 8660-4 (NYHA functional classification)
* **SNOMED CT:** 364585003 (NYHA functional classification)

### Klinische Bedeutung
Die NYHA-Klassifikation beschreibt die Ausprägung der Herzinsuffizienz anhand der Symptome bei körperlicher Betätigung:

* **NYHA I:** Keine Einschränkung, gewöhnliche körperliche Betätigung verursacht keine Symptome
* **NYHA II:** Leichte Einschränkung, ruhig beschwerdefrei, bei körperlicher Betätigung Beschwerden
* **NYHA III:** Starke Einschränkung, ruhig beschwerdefrei, bei geringer körperlicher Betätigung Beschwerden
* **NYHA IV:** Unfähig, sich ohne Beschwerden zu bewegen, Beschwerden auch in Ruhe

### Mapping
* **LOINC:** 8660-4
* **SNOMED CT:** 364585003

### Beispiele
* MII_EXA_Kardio_Score_NYHA_II

### Verwandte Profile
* mod. Rankin-Skala (für neurologische Outcomes)
* LVEF (funktionelle Messwerte)

---

## mod. Rankin-Skala (mRS)

**Profil:** [MII_PR_Kardio_Score_modifizierte_Rankin_Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.html) · **Resource:** Observation · **Id:** mii-pr-kardio-score-modifizierte-rankin-skala

### Beschreibung
Profil zur Erfassung des Outcomes eines Schlaganfalls mittels modifizierter Rankin-Skala.

### Kern-Elemente
* `code` — SNOMED CT Code für mRS
* `valueCodeableConcept` — mRS-Score (0-6)
* `effective[x]` — Datum der Bewertung
* `subject` — Reference(Patient)

### Wertebereiche
* **mRS-Skala:** MII_VS_Kardio_Modifizierte_Rankin_Skala (0-6)
* **0:** Keine Symptome
* **1:** Keine signifikanten Einschränkungen, trotz Symptomen
* **2:** Geringe Behinderung, selbstständig in allen Aktivitäten
* **3:** Mittlere Behinderung, einige Hilfen für Aktivitäten nötig
* **4:** Erhebliche Behinderung, benötigt Hilfe, aber in Aufrechtstellung mobil
* **5:** Schwere Behinderung, bettlägerig, benötigt ständige Pflege
* **6:** Tod

### Anwendung
Die mRS ist der am häufigsten verwendete Outcome-Marker in Schlaganfall-Studien und klinischen Prüfungen. Sie ist einfach zu erheben und gut reproduzierbar.

### Mapping
* **SNOMED CT:** 248252001 (Modified Rankin Scale)
* **LOINC:** 8662-0 (Modified Rankin Scale)

### Beispiele
* MII_EXA_Kardio_MRS

### Verwandte Profile
* NYHA-Score (für Herzinsuffizienz-Stadien)
* Diagnose (Schlaganfall)
