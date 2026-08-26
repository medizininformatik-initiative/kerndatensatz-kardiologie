# Beschreibung Modul Kardiologie

## Einleitung

Das Modul Kardiologie ist als fachspezifisches Modul zur Datenerfassung in strukturierter und standardisierter Form, so dass Information über kardiovaskuläre Erkrankungen erfasst werden. Der verwendete Datensatz umfasst Datenitems, die in qualitativer und quantitativer Weise Parameter definiert, die als grundlegend für die kardiologische Behandlung angesehen werden und in diesem Sinne einen Basisdatensatz entsprechen. 

Die Auswahl der Parameter als Grundlage zur Erfassung notwendiger und genügender Daten zur Behandlung kardiologischer Patientinnen/en entstand durch Zusammenarbeit von Kardiologinnen/en verschiedener Universitätslklinika ind Deutschland und wurde im Rahmen des medizininformatik Projekt ACIRBiS erstellt. Als Ausgangspunkte dienten die Datensätze die von der [DGK](https://dgk.org/) und der [INA](https://www.ina.gematik.de/community-hub/vernetzen-mitwirken/arbeitskreise/erstellung-eines-kardiologischen-basisdatensatzes) , die in Umfang und Detailgrad als als ideal angesehen wurden, jedoch zugunsten der Handhabbarkeit der Daten in reduzierter Form in das KDS Modul aufgenommen worden sind. 

>! Das Basismodul Kardiologie umfasst die Beschreibung der Standardisierung und Strukturierung der medizinischen Datenerfassung zu kardiovaskulären Erkrankungen. Schwerpunkt sind qualitative, bzw. objektivierbare Parameter aus der Anamnese, die als weichenstellendes Element der Arzt-Patienten-Interaktion dienen und auf deren Grundlage wesentliche diagnostische und therapeutische Entscheidungen getroffen werden.

>! Das langfristige übergeordnete Ziel des kardiologischen Kerndatensatzes ist es, eine aus klinischer Perspektive zielgerichtete und scharfe Charakterisierung des individuellen kardiologischen Patienten in standardisierter Form abzubilden, die so eine Forschungsnutzung von Daten aus verschiedenen Kliniken oder auch Hausarztpraxen ermöglicht.

---

## Zielsetzung

Die im Kardiologie Modul festgelegten Parameter bestimmen die Dateninhalte, die langfrsitig als Versorgungsdaten im Forschungskontext Verwendung finden. Hierfür war es gleichsam notwendig, dass

>!Das Modul Kardiologie soll in den Datenintegrationszentren (DIZ) bei der Aufbereitung und Bereitstellung von vorhandenen Patientendaten aus dem Versorgungskontext unterstützen. Es baut bewusst auf bereits vorhandenen Modulen des MII-KDS auf (base, meta, icu, isik, Diagnose, Prozedur) und verwendet, wo möglich, bestehende Strukturen wieder.

Das Modul wird iterativ in drei Umsetzungsstufen entwickelt:

* **Stufe 1 (aktuell):** Prototypische Umsetzung für die ACRIBiS-Studie, Fokus auf Kern-Datenitems zur Standardisierung der kardialen Datenerfassung
* **Stufe 2:** Integration weiterer Vorarbeiten (vollständiger Datensatz aus ACRIBiS, HiGHmed Use Case Cardio, CAEHR, weitere Vorarbeiten)
* **Stufe 3:** Abbildung der gesamten Kardiologie

---

### Umfang der Spezifikation

Das Modul adressiert:

* **Anamnese und klinische Parameter:** Erfassung von Krankengeschichte inkl. Vorerkrankungen und Nicht-Vorliegen (Allergie, Symptom, Klappenvitium, Krankenhausaufenthalte, etc.)
* **Diagnostik:** Objektive kardiale Befunde (Myokardinfarkt, Embolien, Atherosklerotische Ereignisse, Echoparameter, etc.)
* **Skalen:** Strukturierte Bewertung und Einschätzung funktionaler Kapazitäten (NYHA-Score, modifizierte Rankin-Skala, CCS-Grad, Fontaine-Stadium, etc.)
* **Risikofaktoren:** Risikogruppenparameter (Rauchverhalten, familiäre Disposition, Alkoholkonsum, etc.)
* **Kardiologische Geräte** Implantierbare Geräte zur Therapie und Überwachung (Schrittmacher, ICD, LVAD/BiVAD, etc.)
* **Prozeduren:** Behandlungen mit therapeutischem oder diagnostischem Ziel (Device-Implantationen, PCI, etc.)
* **EKG-Metadaten:** Durchführung und -Annotation (Messung, Kanäle, Rasterung, Rohdatenreferenz)

Im Kontext der Anamnese wird das anamnestische Nicht-Vorliegen von Erkrankungen abgebildet.

---

## Status des Moduls

Das Kardiologie-Modul befindet sich aktuell in **Umsetzungsstufe 1 (Prototypisch)**.

* **Aktuelle stabile Version:** keine (s. o.)
* **Vorschauversion:** [2026.0.0-alpha.3](https://simplifier.net/mii-erweiterungsmodul-kardiologie/~releases)
* **Reifegrad:** Draft / Experimental

> Alle veröffentlichten FHIR-Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegrad abgeleitet werden kann.
> Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen.
> Verpflichtende und ballotierte Ergebnisse werden zukünftig unter dem Tab 'Packages' zu finden sein.
