Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten.

Die aktuelle Version des Kardiologie-Moduls ist **2027.0.0-ballot**.

## Änderungen seit 2027.0.0-ballot (Ballot-Kommentierung, noch nicht veröffentlicht)

#### Profil-Updates

 - LVEF: Referenzbereiche gemäß ESC-Leitlinie Herzinsuffizienz 2026 aktualisiert (Kategorie HFmrEF entfällt): [#93](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/93)
 - LVEF: Referenzbereich auf einen codierten Normalbereich umgestellt (`type` = normal, `low` = 50 %), Bewertung des Messwerts über `interpretation` (z. B. N/L); das bisherige Slicing nach `text` (Normal/Reduced) entfällt (**Breaking Change**): [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)
 - LVEF: redundante Invarianten (`vs-de-2`, `mii-icu-1`, `code-coding-icu`) entfernt; Prüfung auf value/dataAbsentReason über die zentrale Invariante `mii-inv-kardio-dataabsentreason`: [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)
 - Fix: Invariante `mii-kardio-pos-int` (Anzahl KH-Aufenthalte) griff durch eine fehlerhafte FHIRPath-Expression nicht; negative Werte werden jetzt abgelehnt: [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)
 - Kardiale Deviceimplantation: `focalDevice` nicht mehr verpflichtend, `focalDevice.manipulated` auf `MII PR Kardio Device` eingeschränkt: [#99](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/99)
 - Rauchen: Kurzbeschreibungen und Definitionen der Components überarbeitet: [#101](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/101)
 - Korrekturen an Descriptions (Atherosklerotisches Erstereignis, Anzahl KH-Aufenthalte, Invariante `mii-kardio-pos-int`) und an der Slicing-Description im Erstereignis-Profil: [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)

#### Terminologie

 - SNOMED-PCE für operative Klappeneingriffe: Zugang auf „Percutaneous approach - access“ korrigiert: [#96](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/pull/96)
 - Id des ValueSets `MII_VS_Kardio_Kardiale_Deviceimplantation_SNOMEDCT` korrigiert (`…-scnomedct` → `…-snomedct`); **die Canonical-URL ändert sich dadurch**: [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)
 - Namens- und Titelkorrekturen: `MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOMEDCT`, Titel „Deviceimplantation“ (3 ValueSets): [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)

#### Dokumentation

 - IG-Texte überarbeitet: Widersprüche zwischen Text und Profilen, Akronym-Auflösungen (ACRIBiS, CAEHR), Tippfehler; Gliederung der Datensatzseite am Klassendiagramm ausgerichtet; Hinweis auf vorbereitete, noch nicht verwendete Terminologien: [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)
 - UML-Klassendiagramm aktualisiert (Herkunftsland, Ethnie, Lebensmittelpunkt): [#97](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/97)
 - Nicht abgestimmter Entwurf des CapabilityStatements entfernt: [#100](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/100)

#### Sonstiges

 - `packageId` in `sushi-config.yaml` ergänzt: [#92](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/92)
 - Questionnaire gemäß Namenskonvention (Prefix `qst`) umbenannt: `MII_QN_Kardio_Acribis_Study_FollowUp` → `MII_QST_Kardio_Acribis_Study_FollowUp`, id `mii-qn-kardio-…` → `mii-qst-kardio-acribis-study-followup`; **die Canonical-URL ändert sich dadurch**
 - QC-Regeln (`qc/custom.rules.yaml`) überarbeitet: Questionnaire und Library aufgenommen, ImplementationGuide von den Namenskonventionen ausgenommen, Prefix-Kürzel vereinheitlicht

## Version 2027.0.0-ballot (Ballot-Version)

### Änderungen seit 2027.0.0-ballot.rc1

#### Terminologie

 - Vereinfachen der SNOMED PCE für schwere spontane Blutung: [#87](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues/87)
 - Fix SNOMED-Code im Follow-Up-Fragebogen
 - LOINC Update auf Version 2.83
 - Das VS-Binding im Profil `MII PR Kardio Kardiale Deviceimplantation` für `bodySite` wurde von `required` auf `extensible` geändert. Außerdem sind jetzt auch andere Codes als SNOMED per Slicing erlaubt.

#### Dependency-Updates
 - Update der Dependencies auf die Version 2027.0.0-ballot der KDS Module Basis und Meta

#### Dokumentation
 - Sprache für alle Ressourcen auf `de` gesetzt

## Version 2027.0.0-ballot.rc1 (Release Candidate für Ballot in Q4/2026)

Ballot Release Candidate für den Release-Zyklus 2027. FHIR-Package: `de.medizininformatikinitiative.kerndatensatz.kardiologie` 2027.0.0-ballot.rc1 (auch als Asset an diesem Release angehängt).

### Änderungen seit 2026.0.0-alpha.3

#### Terminologie & Versions-Pinning

- SNOMED-CT-Version auf 20260701 gesetzt gemäß MII Terminology Version Policy (Alias und Parameters-Datei)
- HL7 v3 ActCode Version auf 10.0.0 pinned (Kompatibilität mit hl7.terminology.r4 7.1.0)
- ValueSets für ICD-10-GM, Alpha-ID und OPS auf MII-Versionen aktualisiert

#### Profil-Updates

- Profil `MII_PR_Kardio_Observation_Rauchen`: Komponenten und Beispiel aktualisiert
- Profil `MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF`: ValueSet auf v2-0532 geändert 
- `MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt`: Fix des Code-Slicings
- `MII_PR_Kardio_FollowUp`: Verschiedene Issues behoben

#### Beispiele & Instanzen

- `MII_EXA_Kardio_Raucherstatus` aktualisiert
- `MII_EXA_Kardio_QuestionnaireResponse_*` korrigiert
- Kleine Korrekturen in Questionnaire Response-Examples

#### IG-Publikation & Dokumentation

- IG erstellt; Status: `draft`
- UML-Diagramm aktualisiert

#### Abhängigkeiten

- ISiK Stufe 6 (`de.gematik.isik: 6.0.0`) hinzugefügt
- `de.basisprofil.r4` auf 1.6.0 aktualisiert
- `hl7.terminology.r4` auf 7.1.0 aktualisiert
- `de.medizininformatikinitiative.kerndatensatz.base` und `meta` auf 2026.0.x

### CI/CD & Infrastruktur

- GitHub Actions Workflows für FHIR-Validierung integriert (reusable workflows von kerndatensatz-meta)
- `advisor.json` und `qc/custom.rules.yaml` erstellt

---

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

---

## Version 2026.0.0-alpha.2

(Vorgängerversion — siehe Simplifier für Details)

---

## Version 2026.0.0-alpha.1

(Initialer Release — siehe Simplifier für Details)

---

## Release-Zyklus

* **Vorschauversionen (2026.0.0-alpha.1, 2026.0.0-alpha.2, ...):** Entwicklungsstand, aktive Diskussion und Iteration, keine ballotierten Inhalte
* **Stabile Versionen (2026.0.0, 2026.0.1, ...):** ballotiert und verbindlich, nur Bugfixes

Die Veröffentlichung erfolgt aktuell über den Simplifier-Release-Bereich:
https://simplifier.net/MII-Erweiterungsmodul-Kardiologie/~releases