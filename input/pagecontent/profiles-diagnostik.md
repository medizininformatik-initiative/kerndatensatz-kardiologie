Profile dieser Kategorie bilden objektiv erhobene Mess- und Befunddaten ab, sofern diese nicht bereits in anderen KDS Modulen abgebildet sind. Zentral für die Abbildung ist der Code, Zeitpunkt/Periode und Messwert inkl. Einheit sowie zugehörige Referenzintervalle.

## Profile

### **MII PR Kardio Linksventrikulaere Ejektionsfraktion** — [StructureDefinition](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.html)

  **Zweck** Angabe eines Untersuchungsergebnisses zur LVEF mittels Echokardiographie.

  **Parent:** Observation

  **Diff:**
  - `partOf` für Referenz auf Procedure
  - `category` mit Angabe "imaging"
  - `code` anzugeben mit SNOMED CT und LOINC
  - `subject` mit Kardinalität 1..1 auf Patienten-Referenz
  - `effective[x]` eingeschränkt auf dateTime, Period oder instant
  - `value[x]` als UCUM-Unit "%"
  - `referenceRange` (0..1) als Normalbereich: `type` = `normal` ([HL7 referencerange-meaning](https://terminology.hl7.org/CodeSystem-referencerange-meaning.html)), `low` = 50 %
  - `interpretation` zur Bewertung des Messwerts aus dem Standard-ValueSet [observation-interpretation](http://hl7.org/fhir/R4/valueset-observation-interpretation.html), z. B. `N` (Normal, LVEF ≥ 50 %) oder `L` (Low, LVEF < 50 %, reduziert)

  **Hinweis zur Modellierung:** Die Einteilung folgt der ESC-Leitlinie Herzinsuffizienz 2026 (LVEF < 50 % reduziert, ≥ 50 % erhalten; die Kategorie HFmrEF entfällt). Statt mehrerer Referenzbereiche wird ausschließlich der Normalbereich angegeben; die Bewertung des konkreten Messwerts erfolgt über `interpretation`. Die Phänotypen HFrEF/HFpEF sind Diagnosen und werden nicht über die LVEF-Observation abgebildet, da eine LVEF ≥ 50 % allein keine Herzinsuffizienz belegt.

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
