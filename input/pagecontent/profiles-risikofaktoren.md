## Profile

**MII PR Kardio Observation Rauchen** — [StructureDefinition](StructureDefinition-mii-pr-kardio-observation-rauchen.html)

  **Zweck:** Erfassung des Rauchverhaltens.

  **Parent:** ISiKRaucherStatus

  **Diff:**
  - `category` aus ValueSet `$observation-category-vs` (required)
  - `code.coding.system`, `code.coding.version` und `code.coding.code` als Must-Support
  - `subject` ist auf Patienten-Referenz beschränkt
  - `value[x]` auf `CodeableConcept` fixiert (Current Smoking Status)
  - `hasMember` und `derivedFrom` sind auf spezifische Referenzen eingegrenzt
  - `component` ist geslicet für zusätzliche Angaben zum Rauchverhalten (`packungsjahre`, `zigarettenProTag`, `rauchbeginn`, `rauchdauer`):
    - `component[packungsjahre]` (SNOMED CT 401201003): Erfordert `valueQuantity` in UCUM `{pack-years}`
    - `component[zigarettenProTag]` (LOINC 63640-7): Erfordert `valueQuantity` in UCUM `{cigarettes-per-day}`
    - `component[rauchbeginn]` (SNOMED CT 266929003): Erlaubt `valueDateTime` (Datum) oder `valueQuantity` (Alter in Jahren)
    - `component[rauchdauer]` (SNOMED CT 228487000): Erfordert `valueQuantity` in UCUM `a` (Jahre)

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
