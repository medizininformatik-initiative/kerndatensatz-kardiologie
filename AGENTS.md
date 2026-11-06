# AGENTS.md

Hinweise für KI-Agenten (und Menschen) zur Arbeit in diesem Repository.

## Projektübersicht

**Medizininformatik Initiative - Kerndatensatz Modul Kardiologie**

Das Projekt beschreibt die FHIR-Spezifikation des Erweiterungsmoduls 'Kardio', welches einen Teil des Kerndatensatzes der Medizininformatik-Initiative darstellt.

**Status:**
- Umsetzungsstufe 1: Prototypische Umsetzung für die ACRIBiS-Studie
- Reifegrad: Draft / Experimental
- Version: 2027.0.0-ballot (siehe `sushi-config.yaml`)
- Package-ID: `de.medizininformatikinitiative.kerndatensatz.kardiologie`
- 19 FHIR-Profile, gruppiert in 6 Kategorien, plus ein Questionnaire (ACRIBiS Follow-up)

**Ziel:** Standardisierung und Strukturierung der kardiovaskulären Datenerfassung für Interoperabilität zwischen Kliniken

---

## Projektstruktur

```
input/
├── fsh/                    # FSH-Quelldateien (Source of Truth)
│   ├── profiles/           # StructureDefinition-Profile (MII_PR_Kardio_*)
│   ├── valuesets/          # ValueSets (MII_VS_Kardio_*)
│   ├── codesystems/        # CodeSystems (MII_CS_Kardio_*)
│   ├── instances/          # Beispiel-Instanzen (MII_EXA_Kardio_*)
│   ├── questionnaire/      # Questionnaires (MII_QST_Kardio_*)
│   ├── extensions/         # Extensions (derzeit leer)
│   ├── rulesets/           # Wiederverwendbare RuleSets (publisher, version)
│   ├── aliases.fsh         # Terminologie-Aliase ($sct, $loinc, etc.)
│   └── invariants.fsh      # Zentrale Invarianten
├── pagecontent/            # IG-Seiten (Markdown)
│   ├── profiles-*.md       # Profil-Übersicht + Kategorie-Seiten
│   └── *.md                # Andere IG-Seiten (index, scenarios, release-notes, ...)
├── images/                 # Bilddateien (u. a. Klassendiagramm.svg)
└── ignoreWarnings.txt      # IG-Publisher-Warnungen, die bewusst ignoriert werden

fsh-generated/              # SUSHI-Output (wird committet!)
information-model/          # UML-Klassendiagramm (PlantUML-Quelle + SVG)
input-cache/txcache/        # Terminologie-Cache des IG Publishers (wird committet, siehe unten)
qc/custom.rules.yaml        # QC-Regeln (u. a. Namenskonventionen)
scripts/                    # Hilfsskripte für die CI
.github/workflows/          # CI: Validierung/Release (main.yml), IG-Build + Preview (ig-publisher.yml)
template/                   # IG-Template (git-ignored)
output/, temp/              # Build-Artefakte (git-ignored)
```

---

## Namenskonventionen

| Artefakt | Dateiname / Name | Beispiel |
|----------|------------------|----------|
| Profil | `MII_PR_Kardio_<Name>` | `MII_PR_Kardio_Diagnose` |
| Beispiel | `MII_EXA_Kardio_<Name>` | `MII_EXA_Kardio_LVEF` |
| ValueSet | `MII_VS_Kardio_<Name>_<Terminologie>` | `MII_VS_Kardio_NYHA_Klassen_SNOMEDCT` |
| CodeSystem | `MII_CS_Kardio_<Name>` | `MII_CS_Kardio_Lebensmittelpunkt` |
| Questionnaire | `MII_QST_Kardio_<Name>` | `MII_QST_Kardio_Acribis_Study_FollowUp` |

IDs entsprechend in Kleinbuchstaben mit Bindestrichen (z. B. `mii-pr-kardio-diagnose`). Die Regeln werden in der CI über `qc/custom.rules.yaml` geprüft.

---

## Build-Prozesse

### Lokal: nur SUSHI

```bash
sushi .
```

- Kompiliert FSH → FHIR-Artefakte in `fsh-generated/` (ca. 30 Sekunden).
- **Lokal wird im Team nur `sushi .` ausgeführt.** Der vollständige IG-Build (IG Publisher, lokal ca. 40 Minuten) läuft über GitHub Actions.
- Agenten starten **keinen** lokalen IG-Publisher-Build (`_build.sh`, `_genonce.*`, `publisher.jar`).

### CI (GitHub Actions)

| Workflow | Auslöser | Funktion |
|----------|----------|----------|
| `ig-publisher.yml` | Push auf jeden Branch außer `main`, `gh-pages`, `fsh-generated` | SUSHI + IG Publisher; Vorschau unter `https://medizininformatik-initiative.github.io/kerndatensatz-kardiologie/branches/<branch>/` |
| `main.yml` | Push/PR auf `main`, Tags `v*`, Releases | FHIR-Validierung (.NET + Java, Workflows aus `kerndatensatz-meta`) und Release |

Terminologieserver im IG-Build: bevorzugt SU-TermServ (über Client-Zertifikat aus den Repo-Secrets), sonst Fallback auf `https://tx.fhir.org` (dann ggf. unvollständige Expansionen MII-spezifischer ValueSets – QA-Hinweis, kein Fehler).

### Empfohlener Workflow

```
Änderung in FSH/Markdown
         ↓
    sushi .                    # lokal, schnelles Feedback
         ↓
    fsh-generated/ prüfen
         ↓
    Commit + Push auf Feature-Branch
         ↓
    IG-Preview in GitHub Actions prüfen
         ↓
    PR / Merge nach main
```

---

## Terminologie-Cache (`input-cache/txcache/`)

Der Terminologie-Cache des IG Publishers ist **bewusst versioniert** (Beschluss im Modulteam), damit IG-Builds schneller und weniger abhängig von der Verfügbarkeit der Terminologieserver laufen. In `.gitignore` ist `input-cache/` ignoriert, mit Ausnahme von `txcache/`.

**Umgangsregeln:**

1. **Nur bewusst aktualisieren.** Cache-Änderungen nicht nebenbei mit `git add .` / `git add -A` mitcommitten. Vor jedem Commit `git status input-cache/txcache` prüfen.
2. **Eigener Commit.** Cache-Updates immer als separaten Commit, nicht gemischt mit FSH- oder Doku-Änderungen (z. B. `build(txcache): Terminologie-Cache aktualisiert`).
3. **Keine Server-Fremddateien.** Lokale Builds erzeugen Dateien wie `.terminologyCapabilities.tx.fhir.org.r4.cache`, `.terminologyCapabilities.tx.fhir.de.fhir.cache` o. ä. Diese nicht committen.
4. **Vor Releases frisch aufbauen.** Vor einem Ballot-/Release-Build den Cache leeren und neu erzeugen lassen, damit die Validierung nicht auf veralteten Terminologie-Ständen (SNOMED CT, ICD-10-GM, OPS, LOINC, ValueSet-Expansionen) beruht. Das Ergebnis als eigenen Commit einchecken.
5. **Merge-Konflikte nicht von Hand auflösen.** Bei Konflikten in Cache-Dateien eine Seite übernehmen (in der Regel die des Ziel-Branches) und den Cache bei Bedarf über einen Build neu erzeugen.
6. **Nie manuell editieren.** Agenten verändern Dateien im Cache nicht inhaltlich.

---

## Wichtige Konfigurationsdateien

### `sushi-config.yaml`
- IG-Metadaten (Name, Version, Description, packageId)
- Seiten-Struktur (`pages`) und Menü (`menu`)
- Parameter (pin-canonicals, excludettl, ...)
- Dependencies (Basis-Profile)

### `ig.ini`
- Verweist auf das ImplementationGuide-JSON in `fsh-generated/resources/` und das Template

### `package.json`
- Package-Metadaten für NPM/Simplifier, Dependencies, Release-Informationen

### `input/ignoreWarnings.txt`
- Bewusst akzeptierte IG-Publisher-Warnungen; neue Einträge nur mit Begründung als Kommentar

### `qc/custom.rules.yaml`
- QC-Regeln für die CI (Ressourcen-Validierung, Namenskonventionen für id/name/title/url)

---

## Workflow für häufige Aufgaben

### Neues Profil hinzufügen

1. **FSH-Datei** in `input/fsh/profiles/MII_PR_Kardio_<Name>.fsh`
2. **ValueSet/CodeSystem** falls nötig in `input/fsh/valuesets/` bzw. `input/fsh/codesystems/`
3. **Beispiel-Instanz** in `input/fsh/instances/MII_EXA_Kardio_<Name>.fsh`
4. **Profil-Seite** in der passenden `input/pagecontent/profiles-*.md` ergänzen und in `profiles-overview.md` aufnehmen
5. **`sushi-config.yaml`** aktualisieren (falls neue Seiten/Menüeinträge)
6. **Release Notes** in `input/pagecontent/release-notes.md` ergänzen
7. **Build:** `sushi .`, danach Preview in GitHub Actions prüfen

### Änderungen testen

1. FSH-Datei editieren
2. `sushi .` ausführen (muss ohne Fehler durchlaufen)
3. Generierte JSON in `fsh-generated/resources/` prüfen
4. Commit + Push, IG-Preview der CI prüfen

---

## Terminologie-Aliase

**Aus `input/fsh/aliases.fsh`:**

| Alias | Bedeutung | URL |
|-------|-----------|-----|
| `$sct` | SNOMED CT | http://snomed.info/sct |
| `$loinc` | LOINC | http://loinc.org |
| `$ops` | OPS | http://fhir.de/CodeSystem/bfarm/ops |
| `$icd-10-gm` | ICD-10-GM | http://fhir.de/CodeSystem/bfarm/icd-10-gm |
| `$mdc` | MDC (ISO 11073) | urn:iso:std:iso:11073:10101 |
| `$alpha-id` | Alpha-ID | http://fhir.de/CodeSystem/bfarm/alpha-id |
| `$v2-0203` | HL7 v2 Table 0203 | http://terminology.hl7.org/CodeSystem/v2-0203 |
| `$v2-0532` | HL7 v2 Table 0532 | http://terminology.hl7.org/CodeSystem/v2-0532 |

Vollständige Liste: `input/fsh/aliases.fsh`.

---

## Abhängigkeiten

**Aus `sushi-config.yaml`:**

| Package ID | Version |
|-----------|---------|
| `de.basisprofil.r4` | 1.6.0 |
| `de.medizininformatikinitiative.kerndatensatz.base` | 2027.0.0-ballot |
| `de.medizininformatikinitiative.kerndatensatz.meta` | 2027.0.0-ballot |
| `de.gematik.isik` | 6.0.0 |
| `hl7.terminology.r4` | 7.1.0 |

Versionen werden bewusst fest gepinnt (keine `.x`-Wildcards), um reproduzierbare Snapshots zu erhalten.

---

## Kategorien und Profile

**6 Kategorien mit 19 Profilen:**

### Anamnese (5 Profile)
- [MII PR Kardio Diagnose](StructureDefinition-mii-pr-kardio-diagnose.html) — Kardiovaskuläre Diagnosen
- [MII PR Kardio Diagnose Prozedur Nein Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html) — Ausschluss/Unbekanntheit
- [MII PR Kardio Atherosklerotisches Erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html) — Erstereignis-Datum
- [MII PR Kardio Anzahl KH Aufenthalte wg HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html) — KH-Aufenthalte wegen HF
- [MII PR Kardio Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.html) — Klappenerkrankungen

### KardioDevices (4 Profile)
- [MII PR Kardio Kardiale Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.html) — Implantation (Schrittmacher, ICD, CRT, LVAD/BiVAD)
- [MII PR Kardio Device](StructureDefinition-mii-pr-kardio-device.html) — Allgemeines Device-Profil
- [MII PR Kardio Geraeteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.html) — Geräteprogrammierung (z. B. VVI-Modus)
- [MII PR Kardio NBG Schrittmachermodus](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.html) — NBG-Codierung

### EKG-Metadaten (6 Profile)
- [MII PR Kardio EKG Durchführung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.html) — EKG-Durchführung
- [MII PR Kardio EKG Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.html) — EKG-Kanal (I, II, III, V1-V6, etc.)
- [MII PR Kardio EKG Referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.html) — EKG-Referenz (Rohdaten an externem Ort)
- [MII PR Kardio EKG Geraet](StructureDefinition-mii-pr-kardio-ekg-geraet.html) — EKG-Gerät
- [MII PR Kardio EKG Geraetedefinition](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.html) — Gerätedefinition
- [MII PR Kardio EKG Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.html) — EKG-Annotationen

### Skalen (2 Profile)
- [MII PR Kardio Score NYHA](StructureDefinition-mii-pr-kardio-score-nyha.html) — NYHA-Klassifikation
- [MII PR Kardio Score modifizierte Rankin Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.html) — mRS (Outcome Schlaganfall)

### Diagnostik (1 Profil)
- [MII PR Kardio Linksventrikulaere Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.html) — LVEF

### Weitere Risikofaktoren (1 Profil)
- [MII PR Kardio Observation Rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.html) — Rauchverhalten

---

## Git-Hinweise

### Was wird committet?
- **Committen:** `input/`, `fsh-generated/` (nach `sushi .`), `information-model/`, `sushi-config.yaml`, `package.json`, `qc/`, `.github/`
- **Bewusst committen:** `input-cache/txcache/` (siehe Regeln zum Terminologie-Cache)
- **Nicht committen:** `output/`, `temp/`, `template/`, `translations/`, übriges `input-cache/`, `*.tgz`, `project.yaml`, `fhirpkg.lock.json` (alles in `.gitignore`)
- **Keine Zusatzdateien** im Repo, die nicht zur Spezifikation gehören (z. B. Issue-Text-Entwürfe, Notizen)

### Commit-Richtlinien
- Commit-Messages im Stil von Conventional Commits mit Issue-Bezug, z. B. `fix(#100): ...`, `doc(#101): ...`, `refactor: ...`, `ci(qc): ...`, `build: ...`
- Vor dem Commit von FSH-Änderungen muss `sushi .` fehlerfrei gelaufen und `fsh-generated/` aktualisiert sein
- KI-unterstützte Commits mit `Co-Authored-By:`-Zeile kennzeichnen
- Zeilenenden (CRLF/LF) werden von git behandelt

### Branches
- `main`: stabiler Stand, Validierung + Release über `main.yml`
- Feature-Branches (`feature/...`) und `ci/gh-pages-preview`: Entwicklung, IG-Preview über `ig-publisher.yml`
- `gh-pages`: wird von der CI befüllt, nicht manuell bearbeiten

---

## Wichtige Links

- [Modul im Simplifier](https://simplifier.net/MII-Erweiterungsmodul-Kardiologie/~introduction)
- [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie)
- [MII Modul Kardio Chat](https://mii.zulipchat.com/#narrow/channel/505571-MII-KDS-Kardio)

---

## Autoren und Ansprechpartner

**Leitung des Moduls:**
* Merten Prüser

**Technische Umsetzung:**
* Malik Atamne
* Philip Goos
* Jendrik Richter
* Alexandra Cieslak

---

**Letzte Aktualisierung:** 2026-11-06
