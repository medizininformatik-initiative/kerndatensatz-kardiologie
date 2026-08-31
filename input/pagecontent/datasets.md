Das Kardiologie-Modul umfasst derzeit **19 Profile**, die in folgende Gruppen unterteilt werden können:

* **Allgemeine Patientendaten** (Demographische Informationen)
* **Anamnese** (Vorerkrankungen, Nicht-Vorliegen, etc.)
* **Skalen** (NYHA, mRS, etc.)
* **Risikofaktoren** (Disposition, Rauchen, Alkohol)
* **Kardiologische Devices** (Schrittmacher, ICD, CRT, LVAD/BiVAD)
* **Diagnostik** (Device-Implantation, EKG, etc.)
* **EKG Metadaten** (Metadaten, Annotationen, Rohdatenreferenz)
* **Sonstige** (Follow-Up-Fragebogen)

Die Profile sind im Folgenden aufgelistet. Details zur technischen Umsetzung sowie Links auf die zugehörigen Artefakte finden sich im Bereich "Technische Umsetzung" dieses Implementation Guides.

## 1. Allgemeine Patientendaten

Diese Kategorie bündelt demografische und soziodemografische Basisangaben (u. a. Geburtsdatum, Geschlecht, Vitalstatus, Todesursache). Dabei wird teilweise auf die Modul-Profile aus Basis / Person und Soziodemografische Daten (Herkunft) sowie Seltene Erkrankungen (BMI) zurückgegriffen. Es handelt sich nicht um originär kardiologische Inhalte, sondern um die Grundlage für die Verwendung der übrigen Datenelemente. Darüber hinaus sind zusätzliche Angaben abzubilden, die als Eingangsgrößen für die Berechnung von Risikoscores benötigt werden (z. B. Ethnie, Lebensmittelpunkt). Diese können perspektivisch, als nicht medizinische Angaben, auch in anderen KDS-Modulen eingeschlossen werden.

## 2. Anamnese

Die Anamnese bildet den fachlichen Schwerpunkt des KDS-Moduls. Sie umfasst eine Vielzahl, im Rahmen der Patientenvorgeschichte und -befragung, zu erhebenden Angaben: kardiologische Diagnosen, Vitalparameter, Medikation sowie eine Reihe kardiologisch relevanter Einzelangaben (u. a. Klappenvitien, Krankenhausaufenthalte im letzten Jahr oder atherosklerotische Ereignisse). Zahlreiche Einzelangaben sind im KDS-Modell als Symptome zusammengefasst (z. B. Nykturie, subjektive Herzrhythmusstörungen, Schwindel, Synkopen, Gewichtsveränderungen etc.). Angaben wie Blutdruck oder Medikation sind bereits in KDS-Modulen (Intensivmedizin, Medikation) verfügbar. Angaben zu Allergien werden perspektivisch in 2027 im KDS Modul Basis / Person abgebildet.

Besonderheit Diagnosen: Kardiologische Diagnosen oder in der Vergangenheit durchgeführte Prozeduren können sowohl anamnestisch **vom Patienten berichtet, in medizinischen Dokumenten (vor allem Arztbriefen) aufgeführt**, als auch bereits **strukturiert im Primärsystem** vorhanden sein (z. B. aus einer Vorbehandlung oder einem vorangegangenen Aufenthalt). Welcher dieser Wege in der Praxis überwiegt, ist standortabhängig und bedingt die Dokumentation und Systemintegration. Das Modell sieht für die Abbildung beider Erhebungswege die Verwendung der Elemente `verificationStatus`, `Recorder` und `Asserter` vor.

Des Weiteren bildet das KDS-Modul das anamnestische Nichtvorliegen von Diagnosen oder Prozeduren explizit ab. Dies adressiert eine grundlegende Herausforderung in der FHIR-Modellierung: Fehlt ein Diagnose- oder Prozedur-Eintrag, lässt sich daraus allein nicht ableiten, ob der entsprechende Sachverhalt aktiv erfragt und verneint wurde oder ob er schlicht nicht dokumentiert bzw. nicht erhoben wurde – das Fehlen von Daten ist kein Nachweis für ein Nichtvorliegen. Die Umsetzung als Nichtvorhandensein-Observation orientiert sich an einem HL7 Best Practice zu Anamnesen.

Insgesamt wird im KDS-Modul statt auf eine Anamnesefragebogen-Ressource (FHIR-Questionnaire) auf Einzelprofile (z. B. Raucherstatus, NYHA-Score) gesetzt. Das soll die Wiederverwendbarkeit erhöhen: Einzelwerte lassen sich so direkt referenzieren und flexibel aus unterschiedlichen Primärsystemen integrieren, ohne den „Ballast“ in Form zusätzlicher Angaben eines vollständigen Anamnese-Fragebogens mitführen zu müssen. Gleichzeitig bleibt die Überführung von Daten aus FHIR-Questionnaires (z. B. mittels SDC-Extraktion) in die Einzelprofile möglich.

| Profile | Ziel |
|---------|------|
| **Diagnose** | Erfassung kardiovaskulärer Diagnosen (Myokardinfarkt, Embolien, etc.) |
| **Diagnose/Prozedur (Nein/Unbekannt)** | Spezifischer Profile für Ausschluss oder Unbekanntheit von Diagnosen/Prozeduren |
| **Klappenvitium** | Erfassung von Klappenerkrankungen |
| **Atherosklerotisches Erstereignis** | Erfassung von atherosklerotischen Ereignissen (Myokardinfarkt, Schlaganfall, etc.) |
| **MII PR Kardio Anzahl KH Aufenthalte wg HF** | Erfassung der Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz in einem Zeitraum |

## 3. Skalen

Innerhalb der Anamnese bildet die Erfassung relevanter Datenitems für die Nutzung von Skalen den Kern des KDS-Moduls: etablierte Klassifikationen (wie NYHA-Klasse, modifizierte Rankin-Skala, CCS-Grad, Fontaine-Stadium) sowie Kardio-Risikoscore (SMART, CHA2DS2-VASc, BCN-HF, weitere) werden oder sollen zukünftig abgebildet werden. Strukturierte PRO-Fragebögen (initial mindestens PROMIS-29 und EQ-5D-5L) sind bereits im KDS-Modul PROs, PROMs und abgeleitete Metriken abgebildet.

| Profile | Ziel |
|---------|------|
| **NYHA-Score** | Erfassung des NYHA-Score (New York Heart Association Functional Classification) zur Einschätzung der Herzinsuffizienz-Schwere |
| **modifizierte Rankin-Skala (mRS)** | Erfassung des funktionalen Status nach Schlaganfall / kardiovaskulären Ereignissen |

## 4. Risikofaktoren

Hier werden zusätzliche, für die Risikostratifizierung relevante Faktoren erfasst: Alkoholkonsum, familiäre Prädisposition und Raucherstatus. Der Raucherstatus wird nicht neu modelliert, sondern erweitert das bestehende ISiK-Profil (ISiK-Raucherstatus, aufbauend auf ISiK-Lebenszustand). Das KDS-Modul stützt sich damit nicht nur auf die KDS-Module der Medizininformatik-Initiative (MII), sondern nutzt gezielt auch Profile aus dem ISiK-Kontext (Informationstechnische Systeme in Kliniken) – ein Beispiel für die angestrebte Interoperabilität über die MII hinaus.

| Profile | Ziel |
|---------|------|
| **Rauchverhalten** | Erfassung des Rauchverhaltens einer Person (Raucherstatus, Rauchmenge, Rauchbeginn) |

## 5. Kardiologische Devices

Ein weiterer Aspekt der Anamnese ist die Erfassung kardialer Devices in der Patientenvorgeschichte mit zu erhebenden Angaben zu z.B. Herzschrittmacher, Defibrillator, ventrikuläres Unterstützungssystem oder sonstiges implantiertes Device.

| Profile | Ziel |
|---------|------|
| **Kardiale Device-Implantation** | Erfassung von Implantationen (Schrittmacher, ICD, CRT, LVAD/BiVAD) |
| **Device** | Allgemeines Device-Profil |
| **Geräteprogrammierung** | Erfassung der Geräteprogrammierung (z.B. VVI-Modus) |
| **NBG-Schrittmachermodus** | NBG-Schrittmachermodus-Codierung |

## 6. Diagnostik

Diese Kategorie umfasst objektiv erhobene Mess- und Befunddaten. Laborwerte werden dabei nicht neu modelliert, sondern über das KDS-Modul Labor über das Laborbefund-Profil referenziert bzw. wiederverwendet. Echokardiografie-Parameter (Code, Zeitpunkt/Periode, Messwert, Einheit, Referenzintervall) werden hingegen durch das KDS-Modul Kardiologie eingeführt. Des Weiteren werden andere Messwerte wie Körpergröße, Körpergewicht, BMI oder Ergebnisse zu multiresistenten Erregern bereits in bestehenden KDS-Modulen abgebildet.

| Profile | Ziel |
|---------|------|
| **LVEF** | Linksventrikuläre Ejektionsfraktion (Quantifizierung der Herzleistung) |

## 7. EKG-Metadaten

Ergänzend werden zukünftig EKG-Metadaten abgebildet, die perspektivisch die Grundlage für eine biosignalbasierte Risikoprädiktion bilden. Die Verortung der Abbildung von EKG-Metadaten im KDS-Modul Kardiologie dient der initialen Umsetzung. Die Rohdaten eines EKGs sollen dabei nicht in FHIR abgebildet werden. Stattdessen werden Metadaten, z. B. Informationen zum EKG-Gerät und zur Untersuchung, zusammen mit einer Referenz auf die Rohdaten abgebildet. Die Rohdaten selbst sind an einem anderen Ort in einem geeigneteren Format abgespeichert. Einzelne berechnete oder abgeleitete Werte sollen in FHIR abgebildet werden.

| Profile | Ziel |
|---------|------|
| **EKG-Durchführung** | Erfassung der Durchführung eines EKGs |
| **EKG-Kanal** | Spezifische Kanal-Beschreibung (I, II, III, etc.) |
| **EKG-Referenz** | Referenz für EKG-Rasterung und -Kalibrierung |
| **EKG-Gerätedefinition** | Geräte-spezifische Information |
| **EKG-Gerät** | Erfassung des verwendeten Geräts (z.B. Mortara) |
| **EKG-Annotation** | Annotationen zum EKG (z.B. Rhythmus, Blockaden) |

## 8. Sonstige (FollowUp / Questionnaire)

| Profile | Ziel |
|--------|------|
| **Questionnaire** | Standardisiertes Questionnaire für ACRIBiS-FollowUp |

---

## Abbildung der Profilgruppen im Klassendiagramm

Die Profilgruppen sind im [`information-model/Klassendiagramm`](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/wiki/UML) grafisch abgebildet. Das Diagramm stellt die Gruppierung sowie Beziehungen zwischen den verschiedenen Konzepten / Klassen (Patient, Diagnose, Prozedur, Observation, Device, etc.) im Modul Kardiologie dar. Es bildet ebenfalls für zukünftige Umsetzungsstufen geplante Konzepte / Profile ab.  
