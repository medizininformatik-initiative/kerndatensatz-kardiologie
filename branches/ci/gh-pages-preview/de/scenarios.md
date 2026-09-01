# Anwendungsszenarien - MII IG Modul Kardio DE v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Anwendungsszenarien**

## Anwendungsszenarien

## Anwendungsszenarien

Das Modul Kardiologie ist primär für die standardisierte Erfassung und Aufbereitung kardiovaskulärer Daten in den Datenintegrationszentren (DIZ) der Medizininformatik Initiative konzipiert.

### ACRIBiS-Studie (Stufe 1, aktuell)

Die initialen Profile wurden im Kontext der **ACRIBiS-Studie** (ACute Cardiac Infarction Registry with Biobanking and Imaging in Secondary Prevention) entwickelt. Die ACRIBiS-Studie fokussiert sich auf Patienten mit akutem Korarsyndrom (ACS) und Ziel ist es, durch standardisierte Datenerfassung eine bessere Nachsorge und Risikobewertung zu ermöglichen.

Key-Content für Stufe 1:

* Rauchverhalten (MII_PR_Kardio_Observation_Rauchen)
* NYHA-Score (MII_PR_Kardio_Score_NYHA)
* modifizierte Rankin-Skala (MII_PR_Kardio_Score_modifizierte_Rankin_Skala)
* Anzahl KH-Aufenthalte wg. Heart Failure
* Atherosklerotisches Erstereignis (MII_PR_Kardio_Atherosklerotisches_Erstereignis)
* Device-Implantationen (ICD, CRT, LVAD/BiVAD) (MII_PR_Kardio_Kardiale_Deviceimplantation)
* EKG-Durchführung (MII_PR_Kardio_EKG_Durchführung)
* Diagnosen (MII_PR_Kardio_Diagnose, MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt)
* LVEF (Linksventrikuläre Ejektionsfraktion) (MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion)
* Klappenvitium (MII_PR_Kardio_Klappenvitium)

### FollowUp-Befragung (ACRIBiS)

Über ein standardisiertes questionnaire-Medium (MII_QN_Kardio_Acribis_Study_FollowUp) wird die FollowUp-Befragung durchgeführt, um Langzeitdaten zu sammeln.

### HiGHmed Use Case Cardio (Stufe 2)

Integration der Vorarbeiten aus dem HiGHmed use case "Cardio" (Hochgeregelte Datenqualität, umfassende Kardiologie-Daten).

### CAEHR (Stufe 2)

Integration von Profilen für chronische Erkrankungen und Kardiologie (Chronic Angina Evaluation and Heart Failure Registry).

### Gesamte Kardiologie (Stufe 3)

Schrittweise Erweiterung um alle relevanten Bereiche der Kardiologie (Anamnese, Diagnostik, Therapie, FollowUp).

-------

## Datenmanagement in den DIZ

Die Datenaufbereitung erfolgt in den Datenintegrationszentren (DIZ) orientiert am Kerndatensatz der MII/NUM:

1. **Quellsysteme:**Elektronische Patientenakten (EPAs), KIS, LIS, PACS, etc.
1. **Mapping:**Mapping der lokalen Datenstruktur auf die Kerndatensatz-Profile (Basis, Diagnose, ICU, Kardiologie, etc.)
1. **FHIR-Kodierung:**Konvertierung in FHIR-Ressourcen unter Nutzung der definierten Profile und ValueSets
1. **Aufbereitung:**Qualitätsprüfung, Aggregation, Anonymisierung
1. **Bereitstellung:**Auffindbarkeit der Daten über Forschungsdatenportal für Gesundheit (FDPG) und Bereitstellung im Rahmen von Datennutzungsprozessen

Das Kardiologie-Modul definiert dabei kardiologie-spezifische Profile, die in allen DIZ einheitlich verwendet werden müssen, um die Interoperabilität und Auswertbarkeit der Daten sicherzustellen.

