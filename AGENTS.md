# AGENTS.md

## Projektübersicht

**Medizininformatik Initiative - Kerndatensatz Modul Kardiologie**

Das Projekt beschreibt die FHIR-Spezifikation des Erweiterungsmoduls 'Kardio', welches einen Teil des Kerndatensatzes der Medizininformatik-Initiative darstellt.

**Status:**
- Umsetzungsstufe 1: Prototypische Umsetzung für ACRIBiS-Studie
- Reifegrad: Draft / Experimental
- Version: 2026.0.0-alpha.3
- 19 FHIR-Profile, gruppiert in 7 Kategorien

**Ziel:** Standardisierung und Strukturierung der kardiovaskulären Datenerfassung für Interoperabilität zwischen Kliniken

---

## Projektstruktur

```
input/
├── fsh/                    # FSH-Quelldateien (Source of Truth)
│   ├── profiles/           # 19 StructureDefinition-Profile
│   ├── valuesets/          # ValueSets für Terminologien
│   ├── codesystems/        # CodeSystems
│   ├── instances/          # Beispiel-Instanzen (MII_EXA_*)
│   ├── rulesets/           # Wiederverwendbare RuleSets
│   ├── aliases.fsh         # Terminologie-Aliase ($sct, $loinc, etc.)
│   └── capabilitystatement.fsh
├── pagecontent/            # IG-Seiten (Markdown)
│   ├── profiles-*.md       # Profil-Übersichten (7 Dateien)
│   └── *.md                # Andere IG-Seiten (home, scenarios, etc.)
├── images/                 # Bilddateien
└── ignoreWarnings.txt      # IG-Publisher Warnungen (zu ignorieren)

template/                   # Auto-IG-Builder Template (fhir2.base.template)
output/                     # Generierte IG HTML (git-ignored)
temp/                       # Temporäre Build-Artefakte (git-ignored)
```

---

## Build-Prozesse

### SUSHI Build (schnell, ~30 Sekunden)

**Funktion:** Kompiert FSH → FHIR Artefakte (JSON/XML)  
**Erzeugt:** `fsh-generated/` mit alle FHIR-Ressourcen

**Befehle:**
```bash
sushi .              # Einmaliger Build
sushi . --watch      # Watch-Modus für automatische Neuerstellung
```

**Wichtig:** SUSHI ist für die Entwicklung gedacht - schnelles Feedback auf Änderungen in `input/fsh/`

### IG Publisher (Auto-IG-Builder) - CA. 40 MINUTEN

**Funktion:** Generiert kompletten Implementation Guide als HTML  
**Verarbeitet:** `input/pagecontent/*.md` → `output/`  
**Template:** `fhir2.base.template` (in `template/`)  
**Konfiguration:** `ig.ini` + `sushi-config.yaml`

**Befehle:**
```bash
./_build.sh          # Vollständiger IG-Build (~40 Min)
java -jar input-cache/publisher.jar -ig .
```

**⚠️ WICHTIG:** IG-Build dauert ca. 40 Minuten lokal - NICHT für schnelle Tests verwenden!

### Empfohlener Workflow

```
Änderung in FSH/Markdown
         ↓
    sushi .           # Schneller Build (~30 Sek)
         ↓
    Test/Review       # Überprüfung der Änderungen
         ↓
    Vor Commit/PR
         ↓
    ./_build.sh       # Vollständiger IG-Build (~40 Min)
```

**NIEMALS** für schnelle Iterationen den vollständigen IG-Build verwenden!

---

## Wichtige Konfigurationsdateien

### `sushi-config.yaml`
- IG-Metadaten (Name, Version, Description)
- Seiten-Struktur (pages-Liste)
- Menu-Struktur (menu-Liste)
- Parameter (pin-canonicals, excludettl)
- Dependencies (Basis-Profile)

### `ig.ini`
```
[IG]
ig = fsh-generated/resources/ImplementationGuide-mii-kerndatensatzmodul-kardiologie.json
template = fhir2.base.template#current
usage-stats-opt-out = true
i18n-default-lang = de
i18n-lang = de,en
```

### `package.json`
- Package-Metadaten für NPM/Simplifier
- Dependencies (Basis-Profile)
- Release-Informationen

### `template/config.json`
- Template-spezifische Konfiguration
- Extra-Templates (examples, mappings, history)
- Pre-process-Schritte (pagecontent → _includes)

---

## Workflow für häufige Aufgaben

### Neues Profil hinzufügen

1. **FSH-Datei erstellen** in `input/fsh/profiles/MII_PR_Kardio_<Name>.fsh`
2. **ValueSet/CodeSystem** falls nötig in `input/fsh/valuesets/` oder `input/fsh/codesystems/`
3. **Beispiel-Instanz** in `input/fsh/instances/MII_EXA_Kardio_<Name>.fsh`
4. **Profil-Seite** in `input/pagecontent/profiles-*.md` hinzufügen (im CoBHA-Stil)
5. **sushi-config.yaml aktualisieren** (Seiten-Liste und menu-Liste)
6. **Build:** `sushi .` (schnell) → `./_build.sh` (vollständig)

### Profil-Übersicht aktualisieren

- **`profiles-overview.md`** — Organisierte Tabelle aller 19 Profile nach Kategorien
- **`profiles-*.md`** — Kategorie-Seiten mit Profilname + Beschreibung + Link zu `StructureDefinition-*.html`
- **Verlinkung** auf auto-generierte Artefakte in `output/` (z.B. `StructureDefinition-mii-pr-kardio-diagnose.html`)

### IG regenerieren

```bash
sushi .              # Schnell (~30 Sek) - Für schnelles Feedback
./_build.sh          # Vollständig (~40 Min) - Vor Commit/PR
```

### Änderungen testen (ohne 40-min Build)

1. FSH-Datei editieren
2. `sushi .` ausführen
3. Generierte JSON/XML in `fsh-generated/` überprüfen
4. Vor Commit: `./_build.sh` für vollständigen IG

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

---

## Abhängigkeiten

**Base-Profile (aus `sushi-config.yaml`):**

| Package ID | Version | Verwendung |
|-----------|---------|------------|
| `de.basisprofil.r4` | 1.5.4 | Basis-Profile für R4 |
| `de.medizininformatikinitiative.kerndatensatz.base` | 2026.0.x | Basistruktur (Patient, Organization) |
| `de.medizininformatikinitiative.kerndatensatz.meta` | 2026.0.x | Metadaten-Profile |
| `de.gematik.isik` | 5.1.3 | ISiK-Spezifische Codierungen |

---

## Kategorien und Profile

**7 Kategorien mit 19 Profile insgesamt:**

### Anamnese (5 Profile)
- [MII PR Kardio Diagnose](StructureDefinition-mii-pr-kardio-diagnose.html) — Kardiovaskuläre Diagnosen
- [MII PR Kardio Diagnose Prozedur Nein Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html) — Ausschluss/Unbekanntheit
- [MII PR Kardio Atherosklerotisches Erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html) — Erstereignis-Datum
- [MII PR Kardio Anzahl KH Aufenthalte wg HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html) — KH-Aufenthalte wegen HF
- [MII PR Kardio Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.html) — Klappenerkrankungen

### KardioDevices (4 Profile)
- [MII PR Kardio Kardiale Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.html) — Implantation (Schrittmacher, ICD, CRT, LVAD/BiVAD)
- [MII PR Kardio Device](StructureDefinition-mii-pr-kardio-device.html) — Allgemeines Device-Profil
- [MII PR Kardio Geraeteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.html) — Geräteprogrammierung (VVI-Modus)
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

### Git-ignored Dateien
```
/input-cache
/output
/temp
/template
/translations

/build.bat
/build.sh
/gencontinuous.bat
/gencontinuous.sh
/genonce.bat
/genonce.sh

/fsh-generated/fsh-index.txt
/fsh-generated/data/fsh-index.json
/fsh-generated/includes/fsh-link-references.md

.validation-history/
.mcp.json
*.tgz
project.yaml
.bake/
.fhir-package-cache/
fhirpkg.lock.json
```

### Commit-Richtlinien
- **Committen:** `input/`, `template/`, `.fsh`-Dateien
- **NIEMALS committen:** `output/`, `temp/`, `fsh-generated/`
- **Vor Commit:** `sushi .` ausführen, dann geänderte `fsh-generated/` committen

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

**Letzte Aktualisierung:** 2026-08-21