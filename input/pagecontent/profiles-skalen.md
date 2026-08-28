Diese Gruppe umfasst standardisierte klinische Skalen zur Bewertung des funktionellen Status und der Herzinsuffizienz-Schwere.

## Profile

**MII PR Kardio Score NYHA** — [StructureDefinition-mii-pr-kardio-score-nyha.html](StructureDefinition-mii-pr-kardio-score-nyha.html)

  **Zweck:** Einstufung der Herzinsuffizienz nach NYHA-Klassifikation.

  **Parent:** Observation

  **Diff:**
  - `category` auf `survey` fixiert
  - `code` umfasst SNOMED CT 762994006 und LOINC 93124-6 (New York Heart Association Classification)
  - `subject` ist auf Patienten-Referenz beschränkt
  - `value[x]` als `CodeableConcept`
  - `valueCodeableConcept` aus ValueSet `MII_VS_Kardio_NYHA_Klassen_SNOMEDCT` (required)

**MII PR Kardio Score modifizierte Rankin Skala** — [StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.html](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.html)

  **Zweck:** Outcome-Erfassung eines Schlaganfalls mittels mRS.

  **Parent:** Observation

  **Diff:**
  - `category` auf `survey` fixiert
  - `code` umfasst SNOMED CT 1255866005 und LOINC 75859-9 (Modified Rankin Scale)
  - `subject` ist auf Patienten-Referenz beschränkt
  - `value[x]` als `CodeableConcept`
  - `valueCodeableConcept` aus ValueSet `MII_VS_Kardio_Modifizierte_Rankin_Skala` (extensible)

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
