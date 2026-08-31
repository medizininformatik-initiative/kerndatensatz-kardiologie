Auf dieser Seite werden die Unterschiede zwischen den Versionen nachgehalten.

Die aktuelle Version des Kardiologie-Moduls ist **2026.0.0-alpha.3**.

## Version 2027.0.0-rc1 (Version für Ballot in Q4/2026)

Diese Version ist die Veröffentlichung des MII Moduls Kardiologie für die Ballotierung.

### Änderungen seit 2026.0.0-alpha.3
- `fix` Slicing-Fehler in MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt behoben
- `fix` Behebung verschiedener Validation-Fehler
- `chore` Nicht verwendete Dependency auf `Modul ICU` entfernt
- `docs` UML-Diagram hinzugefügt
- `docs` Erstellung eines Implementation Guides für das Modul Kardiologie

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