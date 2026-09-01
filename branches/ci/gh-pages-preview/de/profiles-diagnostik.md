# Profile: Diagnostik - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profile: Diagnostik**

## Profile: Diagnostik

Profile dieser Kategorie bilden objektiv erhobene Mess- und Befunddaten ab, sofern diese nicht bereits in anderen KDS Modulen abgebildet sind. Zentral für die Abbildung ist der Code, Zeitpunkt/Periode und Messwert inkl. Einheit sowie zuugehörige Referenzintervalle.

## Profile

### MII PR Kardio Linksventrikulaere Ejektionsfraktion — StructureDefinition

**Zweck** Angabe eines Untersuchungsergebnisses zur LVEF mittels Echokardiographie.

**Parent:** Observation

**Diff:**

* `partOf` für Referenz auf Procedure
* `category` mit Angabe "imaging"
* `code` anzugeben mit SNOMED CT und LOINC
* `subject` mit Kardinalität 1..1 auf Patienten-Referenz
* `effective[x]` eingescchränkt auf dateTime, Period oder instant
* `value[x]` als UCUM-Unit "%"
* `referenceRange` mit Kardinalität 0..1 angegeben

-------

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.

