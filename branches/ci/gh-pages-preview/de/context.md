# Kontext und Bezüge zu anderen Modulen - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Kontext und Bezüge zu anderen Modulen**

## Kontext und Bezüge zu anderen Modulen

Das Kardiologie-Modul ist ein Erweiterungsmodul des Kerndatensatzes (KDS) der Medizininformatik Initiative und greift teils auf bereits definierte Ressourcen und Strukturen anderer Module zurück.

## Direkte Abhängigkeiten

| | |
| :--- | :--- |
| **base** | Basistruktur (Patient, Organization, Practitioner), zentrale Valuesets (v2-0203, v2-0532, condition-category, observation-category) |
| **meta** | Metadaten (Lizenzcodeable, Publisher, Versionierung) |
| **isik** | ISiK-Spezifische Codierungen (ISiKRaucherstatus, etc. bei Bedarf) |

## Querbezüge zu anderen Modulen

* **Medikation** – Medikationsangaben werden sowohl im `Kardiologie`- als auch im `Medikation`-Modul verwendet. Die relevanten Profile sind im `Medikation`-Modul abgebildet.
* **Labor-Modul** – Laborwerte werden sowohl im `Kardiologie`- als auch im `Labor`-Modul verwendet. Die relevanten Profile sind im `Labor`-Modul abgebildet.
* **Mikrobiologie-Modul** – Kardiologie-relevante Angaben zu Multiresistenten Erregern werden in Profilen des Modul `Mikrobiologie` abgebildet.
* **ICU-Modul** – Grundlegende Vitalparameter (`Blutdruck`, `Körpergröße`, `Körpergewicht`) werden im Modul ICU definiert und im Kardiologie-Modul wiederverwendet.
* **Seltene-Erkrankungen-Modul** – Stellt das `BMI`-Profil bereit, das in der Kardiologie wiederverwendet werden kann.
* **PRO-Modul** – Im Kardiologie-Modul werden Profile zur Abbildung patienten-relevanter Fragebögen (z. B. PROMIS, EQ-5D-5L) benötigt. Diese Profile sind im Modul `PRO` abgebildet.

### Relevante Kategorien / Profile

| | | |
| :--- | :--- | :--- |
| **Patientendaten** | `Person/Patient`,`Vitalstatus`,`Prozedur`,`Medikation`,`Diagnose`,`Laborbefund` | `Basis` |
| **Soziodemographie** | `Geburtsland`, (`Lebensmittelpunkt`,`Ethnie`- nicht in SD) | `Soziodemographische Daten`(SD) |
| **Anamnese** | `Vorerkrankung`,`Symptom`,`Nichtvorliegen`,`Erstereignis`,`Risikofaktoren`,`Implantiertes Device`,`Allergie` | – |
| **Skalen** | `NYHA-Klasse`,`Mod. Rankin-Skala`,`CCS-Grad`,`EHRA-Stadium`,`Kardio-Risikoscore` | – |
| **Diagnostik** | `Laborwert`,`Echoparameter`,`EKG-Metadaten`,`Multiresistenter Erreger` | `Labor`,`ICU`,`Mikrobiologie` |
| **Geräte** | `Device`-Abstraktion | – |
| **PRO-Fragebögen** | `PROMIS-29`,`EQ-5D-5L` | `PRO` |

## Wiederverwendung bestehender Profile

Das Kardiologie-Modul ist stark vernetzt: Es nutzt die strukturellen Grundlagen und Value-Sets aus den Kern-Modulen, erweitert sie um kardiologie-spezifische Profile und nutzt Observations- und Prozedur-Profile aus u.a. Labor-, ICU- und Seltene-Erkrankungen-Modulen. Für komplementäre Kardiologie-spezifische Daten (z.B. EKG-Metadaten, Geräte-Repräsentation, Geräteprogrammierung) wurden/werden eigene Profile entwickelt, die nicht durch andere Module abgedeckt sind. Wo immer möglich wird bestehende Profile genutzt oder von diesen geerbt.

## Abhängigkeitsbaum

