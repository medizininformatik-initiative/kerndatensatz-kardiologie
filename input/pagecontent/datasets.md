Das Kardiologie-Modul umfasst derzeit **19 Profile**, die in folgende Gruppen unterteilt werden können:

## 1. Anamnese / Grunddaten

| Profile / Profile-Gruppe | Ziel |
|--------------------------|------|
| **Rauchverhalten** | Erfassung des Rauchverhaltens einer Person (Raucherstatus, Rauchmenge, Rauchbeginn) |

## 2. Scores / Risiko- assessment

| Profile | Ziel |
|---------|------|
| **NYHA-Score** | Erfassung des NYHA-Score (New York Heart Association Functional Classification) zur Einschätzung der Herzinsuffizienz-Schwere |
| **modifizierte Rankin-Skala (mRS)** | Erfassung desfunctional status nach Schlaganfall / kardiovaskulären Ereignissen |

## 3. Diagnosen

| Profile | Ziel |
|---------|------|
| **Diagnose** | Erfassung kardiovaskulärer Diagnosen (Myokardinfarkt, Embolien, etc.) |
| **Diagnose/Prozedur (Nein/Unbekannt)** | Spezifischer Profile für Ausschluss oder Unbekanntheit von Diagnosen/Prozeduren |

## 4. Prozeduren /.device-implantationen

| Profile | Ziel |
|---------|------|
| **Kardiale Device-Implantation** | Erfassung von Implantationen (Schrittmacher, ICD, CRT, LVAD/BiVAD) |

## 5. EKG

| Profile | Ziel |
|---------|------|
| **EKG-Durchführung** | Erfassung der Durchführung eines EKGs |
| **EKG-Kanal** | Spezifische Kanal-Beschreibung (I, II, III, etc.) |
| **EKG-Referenz** | Referenz für EKG-Rasterung und -Kalibrierung |
| **EKG-Gerätedefinition** | Geräte-spezifische Information |
| **EKG-Gerät** | Erfassung des verwendeten Geräts (z.B. Mortara) |
| **EKG-Annotation** | Annotationen des EKG (z.B. Rhythmus, Blockaden) |

## 6. Geräte / Devices

| Profile | Ziel |
|---------|------|
| **Device** | Allgemeines Device-Profil |
| **Gerätprogrammierung** | Erfassung der Geräteprogrammierung (z.B. VVI-Modus) |
| **NBG-Schrittmachermodus** | NBG-Schrittmachermodus-Codierung |

## 7. Funktionsdiagnostik

| Profile | Ziel |
|---------|------|
| **LVEF** | Linksventrikuläre Ejektionsfraktion (Quantifizierung der Herzleistung) |
| **Klappenvitium** | Erfassung von Klappenerkrankungen |

## 8. Atherosklerose / Ereignisse

| Profile | Ziel |
|---------|------|
| **Atherosklerotisches Erstereignis** | Erfassung von atherosklerotischen Ereignissen (Myokardinfarkt, Schlaganfall, etc.) |

## 9. FollowUp / Questionnaire

| Profil | Ziel |
|--------|------|
| **Questionnaire** | Standardisiertes Questionnaire für ACRIBiS-FollowUp |

---

## Abbildung der Profilgruppen im Klassendiagramm

Die Profilgruppen sind auch im [`information-model/Klassendiagramm`](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/wiki/UML) grafisch abgebildet und zeigen die Gruppierung sowie Beziehungen zwischen den verschiedenen Konzepten / Klassen (Patient, Diagnose, Prozedur, Observation, Device, etc.) im Modul Kardiologie.
