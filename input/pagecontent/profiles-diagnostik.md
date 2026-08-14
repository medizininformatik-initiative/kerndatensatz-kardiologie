# Profile: Diagnostik

## Übersicht

| Profil | Resource | Kurzbeschreibung |
|---|---|---|
| [LVEF (Linksventrikuläre Ejektionsfraktion)](#lvef-linksventrikulre-ejektionsfraktion) | Observation | Linksventrikuläre Ejektionsfraktion (LVEF) |

---

## LVEF (Linksventrikuläre Ejektionsfraktion)

**Profil:** [MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.html) · **Resource:** Observation · **Id:** mii-pr-kardio-linksventrikulaere-ejektionsfraktion

### Beschreibung
Profil zur Angabe eines Untersuchungsergebnisses zur LVEF im Kontext des Projekts ACRIBiS.

### Kern-Elemente
* `code` — LOINC Code für LVEF
* `valueQuantity` — LVEF-Wert in %
* `effective[x]` — Datum der Echokardiographie
* `hasMember` — eventuell Komponenten (LVESV, LVEDV)
* `bodySite` — Herz (linksventrikulär)

### Wertebereiche
* **LOINC:** 33536-8 (Left ventricular ejection fraction)
* **Einheit:** % (Prozent)
* **Referenzintervall:** >55% (normal), 40-55% (leicht reduziert), <40% (reduziert)

### Methoden
Die LVEF kann mittels verschiedener Verfahren ermittelt werden:
* Echokardiographie (am häufigsten)
* Szintigraphie (MUGA)
* CT
* MRT

### Klinische Bedeutung
Die LVEF ist ein zentraler Parameter zur Beurteilung der Pumpfunktion des linken Herzens und zur Diagnose und Stadieneinteilung der Herzinsuffizienz.

### Beispiele
* MII_EXA_Kardio_LVEF

### Verwandte Profile
* EKG-Metadaten (für EKG-Durchführungen)
* NYHA-Score (für klinische Einschätzung)
