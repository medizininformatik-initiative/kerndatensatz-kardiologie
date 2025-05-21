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

## Übersicht - KDS Modul Kardio Profile <> Acribis-Datenitems (in Stufe 1)
Die Profilierung orientiert sich am Acribis-Datensatz "ACRIBiS_KardioVaskularDS_Kernscores_V4.1.1".

Profilübersicht:
### Profile zu den Acribis-Kernscore-Items (12 Profile)

| Ressourcentyp      | Profilname         | Beschreibung                                                                 |
|--------------------|--------------------|------------------------------------------------------------------------------|
| Condition          | Kardio Diagnose    | Bildet jegliche Diagnosen (ja/nein/unbekannt) ab.                           |
| Observation        | LVEF-Messwert      | Bildet den Messwert zur Linksventrikulären Ejektionsfraktion (LVEF) ab.     |
| Procedure          | Implantation       | Bildet die Implantation eines kardialen Devices ab.                         |
| Device             | Kardio Device      | Bildet ein kardiales Device ab.                                             |
| Device Metric      | NBG Modus          | Bildet den Schrittmachermodus als NBG-Code ab.                              |
| Observation        | Programmierung     | Bildet die Geräteprogrammierung eines Devices ab.                           |
| Observation        | Rauchen            | Bildet den Raucherstatus ab.                                                |
| Observation        | NYHA-Score         | Bildet die Stadien der Herzinsuffizienz gemäß NYHA-Score ab.                |
| Observation        | Rankin-Skala       | Bildet die modifizierte Rankin-Skala (mRS) ab.                              |
| Observation        | Ausschluss         | Bildet bestimmte Ausschlusskriterien für die Score-Berechnung ab.           |
| Observation        | Arth. Erstereignis | Bildet ab, wann, welches erste artherosklerotisches Ereignis stattfand      |
| Observation        | # KH Aufenthalte   | Bildet die Anzahl von KH Aufenthalten wegen Herzinsuffizienz ab             |

### Profil zu EKG_Metadaten (2 Profile)

| Ressourcentyp   | Profilname      | Beschreibung                                                               |
|-----------------|-----------------|----------------------------------------------------------------------------|
| Procedure       | EKG-Prozedur    | Bildet die Durchführung eines EKGs ab.                                     |
| Observation     | EKG-Metadaten   | Bildet die Metadaten zu einem EKG ab (mit Link z. B. zu XNAT/PACS).        |

### Questionnaires zu Follow-Up (3 Questionnaires)

| Fragebogentyp     | Profilname         | Beschreibung                                         |
|-------------------|--------------------|------------------------------------------------------|
| Acribis-FollowUp  | FollowUp           | Bildet die Items des Acribis-FollowUp-Fragebogens ab.|
| EQ-5D-5L          | QoL-Fragebogen 1   | Siehe Modul PRO.                                     |
| PROMIS-29         | QoL-Fragebogen 2   | Siehe Modul PRO.                                     |

### Externe Profile (aus anderen KDS Modulen)

| Profilname                 | Beschreibung                                           |
|----------------------------|--------------------------------------------------------|
| KDS Basis Patient\|Person  | Bildet Alter/Geburtsdatum und Geschlecht ab.           |
| ICU Arterieller Blutdruck  | Bildet den Blutdruck ab.                               |
| KDS Labor                  | Bildet jegliche Laborwerte ab.                         |
| KDS Medikation             | Bildet jegliche Medikationseinträge ab.                |
