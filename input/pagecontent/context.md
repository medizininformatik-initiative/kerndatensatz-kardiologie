Das Kardiologie-Modul ist ein Erweiterungsmodul des Kerndatensatzes (KDS) der Medizininformatik Initiative und greift auf bereits definierte Ressourcen und Strukturen anderer Module zurück.

## Direkte Abhängigkeiten

| Modul | Funktion im Kardiologie-Kontext |
| ----- | ------------------------------- |
| **base** | Basistruktur (Patient, Organization, Practitioner), zentrale Valuesets (v2-0203, v2-0532, condition-category, observation-category) |
| **meta** | Metadaten (Lizenzcodeable, Publisher, Versionierung) |
| **isik** | ISiK-Spezifische Codierungen (ISiKRaucherstatus, etc. bei Bedarf) |

## Überschneidende Inhalte mit anderen KDS-Modulen

| Datenbereich                     | Kardiologie | Diagnose | Prozedur | Labor | Seltene Erkrankungen | ICU |
| -------------------------------- |-------------|----------|----------|-------|----------------------|-----|
| **Diagnosen (ICD-10 GM)**        | Ja (z. B. I21 Myokardinfarkt) | Hauptfokus | – | – | – | – |
| **Diagnosen (SNOMED-CT)**        | Ja (Implantation, Vitium)    | Ja | – | – | – | – |
| **Prozeduren (OPS)**             | Ja (z. B. 5-31x Device-Implantation) | – | Hauptfokus | – | – | – |
| **Prozeduren (SNOMED-CT)**       | Ja | – | Ja | – | – | – |
| **Observationen**                | Ja (BMI, soziodemographische Daten, Stammdaten, NYHA-Klasse, etc.) | – | – | Ja (Laborwerte) | Ja (BMI) | Ja (Körpergröße, -gewicht, Blutdruck) |
| **Code-Systems**                 | SNOMED-CT, LOINC, ICD-10 GM, OPS, ATC, MDC | SNOMED-CT, ICD-10 GM | SNOMED-CT, OPS, ICD-10 GM | LOINC, SNOMED-CT | – | – |

## Querbezüge zu anderen Modulen

* **Medikation** – Medikationsangaben werden sowohl im `Kardiologie`- als auch im `Medikation`-Modul verwendet. Die relevanten Profile sind im `Medikation`-Modul abgebildet.  
* **Labor-Modul** – Laborwerte werden sowohl im `Kardiologie`- als auch im `Labor`-Modul verwendet. Die relevanten Profile sind im `Labor`-Modul abgebildet.  
* **Mikrobiologie-Modul** – Kardiologie-relevante Angaben zu Multiresistenten Erregern werden in Profilen des Modul `Mikrobiologie` abgebildet.
* **ICU-Modul** – Grundlegende Vitalparameter (`Blutdruck`, `Körpergröße`, `Körpergewicht`) werden hier definiert und stehen dem Kardiologie-Modul zur Verfügung.  
* **Seltene-Erkrankungen-Modul** – Stellt das `BMI`-Profil bereit, das in der Kardiologie wiederverwendet werden kann.
* **PRO-Modul** – Im Kardiologie-Modul werden Profile zur Abbildung patienten-relevanter Fragebögen (z. B. PROMIS, EQ-5D-5L) benötigt. Diese Profile sind im Modul `PRO` abgebildet.  

## Weitere relevante Kategorien / Profile

| Kategorie            | In Kardiologie benötigte Profile                | Herkunft (anderes Modul)            |
| -------------------- | ----------------------------------------------- | ----------------------------------- |
| **Patientendaten**   | `Person/Patient`, `Vitalstatus`, `Prozedur`, `Medikation`, `Diagnose`, `Laborbefund` | `Basis` |
| **Soziodemographie** | `Geburtsland`, (`Lebensmittelpunkt`, `Ethnie` - nicht in SD)  | `Soziodemographische Daten` (SD) |
| **Anamnese**         | `Vorerkrankung`, `Symptom`, `Nichtvorliegen`, `Erstereignis`, `Risikofaktoren`, `Implantiertes Device`, `Allergie` | – |
| **Skalen**           | `NYHA-Klasse`, `Mod. Rankin-Skala`, `CCS-Grad`, `Kardio-Risikoscore` | – |
| **Diagnostik**       | `Laborwert`, `Echoparameter`, `EKG-Metadaten`, `Multiresistenter Erreger` | `Labor`, `ICU`, `Mikrobiologie` |
| **Geräte**           | `Device`-Abstraktion | – |
| **PRO-Fragebögen**   | `PROMIS-29`, `EQ-5D-5L` | `PRO` |

## Nächste Schritte

Das Kardiologie-Modul ist stark vernetzt: Es nutzt die strukturellen Grundlagen und Value-Sets aus den Kern-Modulen, erweitert sie um kardiologie-spezifische Profile und nutzt Observations- und Prozedur-Profile aus u.a. Labor-, ICU- und Seltene-Erkrankungen-Modulen.  Für komplementäre Kardiologie-spezifische Daten (z.B. EKG-Metadaten, Geräte-Repräsentation, Geräteprogrammierung) wurden/werden eigene Profile entwickelt, die nicht durch andere Module abgedeckt sind. Wo immer möglich wird bestehende Profile genutzt oder von diesen geerbt.  
