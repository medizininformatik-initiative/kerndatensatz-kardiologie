# Übersicht zur Profilnutzung für die Acribis-Studie
Für das Modul Kardiologie wurden Umsetzungsstufen definiert. Dieses soll eine iterative Implementation des neuen Moduls in den DIZen ermöglichen und notwendige Priorisierung bei der Verwendung des Moduls erleichtern.

Stufe 1: Prototypische Umsetzung der notwendigen Profile für die Datenitems der ACRIBiS-Studie
Stufe 2: Integration weiterer Vorarbeiten (vollständiger Datensatz aus ACRIBiS, HiGHmed Use Case Cardio, CAEHR, weitere Vorarbeiten)
Stufe 3: Abbildung der gesamten Kardiologie

## Grober Zeitplan
- Studiendatenerfassung     (Ab 10/24; Follow-Ups 10/25)
- Testen erster Profile     (Ab 05/2025)
- Einsatz in allen DIZen    (?)
- Datenausleitung aus DIZ   (?)

> Eine Mapping-Tabelle von AcribisDS_V4.1.1.2 auf FHIR-Profile und -Items befindet sich in Erarbeitung (Stand: 25.06.2025). Arbeitsversionen werden sukzessive auf der [Acribis-Confluence-Seite: FHIR-Profilübersicht] bereitgestellt. 

## Übersicht - KDS Modul Kardio Profile <> Acribis-Datenitems (in Stufe 1)
Die Profilierung orientiert sich am Acribis-Datensatz "ACRIBiS_KardioVaskularDS_Kernscores_V4.1.1".

Profilübersicht:
### Profile zu den Acribis-Kernscore-Items (12 Profile)

| Ressourcentyp      | Profilname         | Beschreibung                                                                 | Examples |
|--------------------|--------------------|------------------------------------------------------------------------------|----------|
| Condition          | [Kardio Diagnose](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_condition_diagnose) | Bildet jegliche Diagnosen (ja/nein/unbekannt) ab.                           | [Liegt vor](https://simplifier.net/mii-erweiterungsmodul-kardiologie/beispiel-kardio-diagnose-liegt-vor), [Liegt nicht vor](https://simplifier.net/mii-erweiterungsmodul-kardiologie/beispiel-kardio-krebs-terminal-liegt-nicht-vor), [unbekannt](https://simplifier.net/mii-erweiterungsmodul-kardiologie/beispiel-kardio-pavk-unbekannt) |
| Observation        | [LVEF-Messwert](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_observation_linksventrikulaere_ejektionsfraktion)     | Bildet den Messwert zur Linksventrikulären Ejektionsfraktion (LVEF) ab.     | [LVEF](https://simplifier.net/mii-erweiterungsmodul-kardiologie/example-lvef) |
| Procedure          | [Implantation](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_kardiale_deviceimplantation)       | Bildet die Implantation eines kardialen Devices ab.                         | [Implantation](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-kardiale-deviceimplantation-icd) |
| Device             | [Kardio Device](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_device)      | Bildet ein kardiales Device ab.                                             | [ICD Device](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-device-icd) |
| Device Metric      | [NBG Modus](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_nbg_schrittmachermodus)          | Bildet den Schrittmachermodus als NBG-Code ab.                              | [Device Modus](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-nbg-schrittmachermodus) |
| Observation        | [Programmierung](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_geraeteprogrammierung)     | Bildet die Geräteprogrammierung eines Devices ab.                           | [Device Mode](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-geraeteprogrammierung-vvi) |
| Observation        | [Rauchen](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_observation_rauchen)            | Bildet den Raucherstatus ab.                                                | [Smoking Status](https://simplifier.net/mii-erweiterungsmodul-kardiologie/example-kardio-observation-rauchen) |
| Observation        | [NYHA-Score](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_score_nyha)         | Bildet die Stadien der Herzinsuffizienz gemäß NYHA-Score ab.                | [NYHA-Score](https://simplifier.net/mii-erweiterungsmodul-kardiologie/example-kardio-nyha) |
| Observation        | [mod. Rankin-Skala](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_score_modifizierte_rankin_skala)       | Bildet die modifizierte Rankin-Skala (mRS) ab.                              | [mod. Ranking Skala](https://simplifier.net/mii-erweiterungsmodul-kardiologie/example-kardio-mrs) |
| Observation        | [Ausschluss](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_observation_ausschluss_scoreberechnung)         | Bildet bestimmte Ausschlusskriterien für die Score-Berechnung ab.           | [Ausschlusskriterium](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-observation-ausschluss-scoreberechnung) |
| Observation        | [Arth. Erstereignis](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_observation_atherosklerotisches_erstereignis) | Bildet ab, wann, welches erste artherosklerotisches Ereignis stattfand      | [Arth. Erstereignis](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-observation-atherosklerotisches-erstereignis) |
| Observation        | [# KH Aufenthalte](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii_pr_kardio_observation_anzahl_kh_aufenthalte_wg_hf)   | Bildet die Anzahl von KH Aufenthalten wegen Herzinsuffizienz ab             | [Hospital Admission](https://simplifier.net/mii-erweiterungsmodul-kardiologie/mii-exa-kardio-observation-anzahl-kh-aufenthalte-wg-hf) |

### Profil zu EKG_Metadaten (2 Profile)

| Ressourcentyp   | Profilname      | Beschreibung                                                               |
|-----------------|-----------------|----------------------------------------------------------------------------|
| Procedure       | EKG-Prozedur    | Bildet die Durchführung eines EKGs ab.                                     |
| Observation     | EKG-Metadaten   | Bildet die Metadaten zu einem EKG ab (mit Link z. B. zu XNAT/PACS).        |

### Questionnaires zu Follow-Up (3 Questionnaires)

| Fragebogentyp     | Profilname         | Beschreibung                                         | Example |
|-------------------|--------------------|------------------------------------------------------|---------|
| Acribis-FollowUp  | FollowUp           | Bildet die Items des Acribis-FollowUp-Fragebogens ab.||
| EQ-5D-5L          | QoL-Fragebogen 1   | Siehe Modul PRO.                                     | [Questionnaire-Example](https://simplifier.net/MII-Erweiterungsmodul-PRO-2025/mii-qst-pro-eq-5d-5l/~overview)|
| PROMIS-29         | QoL-Fragebogen 2   | Siehe Modul PRO gegen Mitte/Ende 2025                ||

### Externe Profile (aus anderen KDS Modulen)

| Profilname                                                                                                                             | Beschreibung                                 |
|----------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------|
| [Person Patient](https://simplifier.net/mii-basismodul-person-2024/mii_pr_person_patient)                                              | Bildet Alter/Geburtsdatum und Geschlecht ab. |
| [ICU Arterieller Blutdruck](https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin/mii_pr_icu_arterieller_blutdruck) | Bildet den Blutdruck ab.                     |
| [Labor Laboruntersuchung](https://simplifier.net/mii-basismodul-labor-2025/mii_pr_labor_laboruntersuchung)                             | Bildet jegliche Laborwerte ab.               |
| [Medikation MedicationStatement](https://simplifier.net/mii-basismodul-medikation-2024/mii_pr_medikation_medicationstatement)          | Bildet jegliche Medikationseinträge ab.      |
