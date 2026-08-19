## Kontext und Bezüge zu anderen Modulen

Das Kardiologie-Modul ist ein Erweiterungsmodul des Kerndatensatzes (KDS) der Medizininformatik Initiative und greift auf bereits definierte Ressourcen und Strukturen anderer Module zurück.

### Direkte Abhängigkeiten

| Modul | Funktion im Kardiologie-Kontext |
|---|---|
| **base** | Basistruktur (Patient, Organization, Practitioner), zentrale Valuesets (v2-0203, v2-0532, condition-category, observation-category) |
| **meta** | Metadaten (Lizenzcodeable, Publisher, Versionierung) |
| **icu** |eventuell wiederverwendete Profile (z.B. Kopfumfang bei Komplikationen) |
| **medikation** | Pharmakotherapie (bzw. zukünftig: Diagnose, Prozedur für überschneidende Daten) |
| **isik** | ISiK-Spezifische Codierungen (ISiKRaucherstatus, etc. bei Bedarf) |

### Überschneidende Inhalte mit anderen KDS-Modulen

| Datenbereich | Kardiologie | Diagnose | Prozedur | Labor |
|---|---|---|---|---|
| **Diagnosen (ICD)** | Ja, komplementär (z.B. I21 Myokardinfarkt, I63 cerebrale Infarkte) | Hauptfokus | — | — |
| **Diagnosen (SNOMED)** | Ja (z.B. Implantation, Vitium) | Ja | — | — |
| **Prozeduren (OPS)** | Ja (z.B. 5-31x Device-Implantation) | — | Hauptfokus | — |
| **Prozeduren (SNOMED)** | Ja | — | Ja | — |
| **Observationen** | Ja (EKG, LVEF, Rauchen, NYHA, MRS, etc.) | — | — | Ja (Laborwerte) |
| **CodeSystems** | SNOMED, LOINC, ICD-10 GM, OPS, ATC, MDC | SNOMED, ICD-10 GM | SNOMED, OPS, ICD-10 GM | LOINC, SNOMED |

### Nächste Schritte

Die Integration weiterer Module (Labor, Molekulargenetisch, Diagnose/Prozedur) erfolgt schrittweise, wobei bereits bestehende Profile so weit wie möglich wiederverwendet werden, um Redundanz zu vermeiden.

Für komplementäre Kardiologie-spezifische Daten (z.B. EKG-Fully-Form, Gerätetreue Repräsentation, Geräteprogrammierung) wurden eigene Profile entwickelt, die nicht durch andere Module abgedeckt sind.