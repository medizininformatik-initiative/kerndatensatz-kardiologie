# Release Notes - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Release Notes**

## Release Notes

Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten.

Die aktuelle Version des Kardiologie-Moduls ist **2026.0.0-alpha.3**.

## Version 2027.0.0-ballot.rc1 (Release Candidate für Ballot in Q4/2026)

Ballot Release Candidate für den Release-Zyklus 2027. FHIR-Package: `de.medizininformatikinitiative.kerndatensatz.kardiologie` 2027.0.0-ballot.rc1 (auch als Asset an diesem Release angehängt).

### Änderungen seit 2026.0.0-alpha.3

#### Terminologie & Versions-Pinning

* SNOMED-CT-Version auf 20260701 gesetzt gemäß MII Terminology Version Policy (Alias und Parameters-Datei)
* HL7 v3 ActCode Version auf 10.0.0 pinned (Kompatibilität mit hl7.terminology.r4 7.1.0)
* ValueSets für ICD-10-GM, Alpha-ID und OPS auf MII-Versionen aktualisiert

#### Profil-Updates

* Profil `MII_PR_Kardio_Observation_Rauchen`: Komponenten und Beispiel aktualisiert
* Profil `MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF`: ValueSet auf v2-0532 geändert
* `MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt`: Fix des Code-Slicings
* `MII_PR_Kardio_FollowUp`: Verschiedene Issues behoben

#### Beispiele & Instanzen

* `MII_EXA_Kardio_Raucherstatus` aktualisiert
* `MII_EXA_Kardio_QuestionnaireResponse_*` korrigiert
* Kleine Korrekturen in Questionnaire Response-Examples

#### IG-Publikation & Dokumentation

* IG erstellt; Status: `active`
* UML-Diagramm aktualisiert

#### Abhängigkeiten

* ISiK Stufe 6 (`de.gematik.isik: 6.0.0`) hinzugefügt
* `de.basisprofil.r4` auf 1.6.0 aktualisiert
* `hl7.terminology.r4` auf 7.1.0 aktualisiert
* `de.medizininformatikinitiative.kerndatensatz.base` und `meta` auf 2026.0.x

### CI/CD & Infrastruktur

* GitHub Actions Workflows für FHIR-Validierung integriert (reusable workflows von kerndatensatz-meta)
* `advisor.json` und `qc/custom.rules.yaml` erstellt

-------

## Version 2026.0.0-alpha.3 (aktuell - 12.06.26 14:55)

Diese Version ist die Veröffentlichung des MII Moduls Kardiologie vor dem ersten Ballot-Verfahren.

### Features

* Profile zur Abbildung von Datenitems im Kontext der ACRIBiS-Studie
* Questionnaire zur FollowUp-Befragung für die ACRIBiS-Studie
* Hinweise und Hilfen zur Implementierung im zugehörigen Github-Repo/MII-Zulip-Chat

### Änderungen und Verbesserungen

* `feat`: Questionnaire MII_QN_Kardio_Acribis_Study_FollowUp
* `feat`: Beispiele (Examples)
* `feat`: MS-Tags in LVEF-Profilen
* `fix`: Code in MII_PR_Kardio_AnzahlKH_Aufenthalte_wg_HF
* `fix`: MS-Tag und Beschreibungen in MII_PR_Kardio_Device + MII_PR_Kardio_Kardiale_Deviceimplantation + zugehörigen ValueSets
* `chore`: Abhängigkeiten (Dependencies)

-------

## Version 2026.0.0-alpha.2

(Vorgängerversion — siehe Simplifier für Details)

-------

## Version 2026.0.0-alpha.1

(Initialer Release — siehe Simplifier für Details)

-------

## Release-Zyklus

* **Vorschauversionen (2026.0.0-alpha.1, 2026.0.0-alpha.2, …):** Entwicklungsstand, aktive Diskussion und Iteration, keine ballotierten Inhalte
* **Stabile Versionen (2026.0.0, 2026.0.1, …):** ballotiert und verbindlich, nur Bugfixes

Die Veröffentlichung erfolgt aktuell über den Simplifier-Release-Bereich: https://simplifier.net/MII-Erweiterungsmodul-Kardiologie/~releases

