## Medizininformatik Initiative - Kerndatensatz - Modul Kardio

> **DISCLAIMER:** Das Modul befindet sich in Umsetzungsstufe 1. Die Profile dienen der prototypischen Umsetzung in den DIZen im Kontext von ACRIBiS und werden iterativ ergänzt.

### Übersicht

Das vorliegende Projekt beschreibt die FHIR-Spezifikation des Erweiterungsmoduls 'Kardio', welches einen Teil des Kerndatensatzes der Medizininformatik-Initiative darstellt. Die hier veröffentlichten FHIR-Profile und ImplemenationGuides dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Status:

Aktuelle stabile Version: keine </br>  <!-- Link Release -->
Vorschauversion: keine </br>  <!--[yyyy-x.x.x](https://simplifier.net/MII-Erweiterungsmodul-Kardiologie/~packages)-->
Reifegrad: Draft

Alle veröffentlichen FHIR-Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegrad abgeleitet werden kann.
Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen. Verpflichtende und ballotierte Ergebnisse sind zukünftig <!-- "zukünftig" --> unter dem Tab 'Packages' zu finden.

### Mitwirkungs- und Kommentierungsmöglichkeiten

* Kommentareinreichung via [GitHub](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie)
* Diskussionsforum im int. [FHIR-Chat](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
<!-- * Teilnahme am [Interoperabilitätsforum](https://wiki.hl7.de/index.php?title=Interoperabilitätsforum) -->

### Kurzzusammenfassung

Das Basismodul Kardiologie umfasst die Beschreibung der Standardisierung und Strukturierung der medizinischen Datenerfassung zu kardiovaskulären Erkrankungen. Schwerpunkt sollen qualitative, bzw. objektivierbare Parameter aus der Anamnese bilden. Diese ist als weichenstellendes Element der Arzt-Patienten-Interaktion zu sehen, auf dessen Grundlage wesentliche diagnostische und therapeutische Entscheidungen getroffen werden und soll Ausgangspunkt für die Einführung einer standardisierten Datenerhebung, die eine Interoperabilität in der Kardiologie gewährleistet, sein. Mittelfristig sollen außerdem wichtige Parameter der Funktions- und Bildgebungsdiagnostik integriert werden. Das langfristige übergeordnete Ziel des kardiologischen Kerndatensatzes ist es, eine aus klinischer Perspektive zielgerichtete, und scharfe Charakterisierung des individuellen kardiologischen Patienten in standardisierter Form abzubilden, die so einen Datenaustausch zwischen verschiedenen Kliniken und später auch Hausarztpraxen ermöglicht.

### Umsetzungsstufen

Für das Modul Kardiologie werden Umsetzungsstufen definiert. Dieses soll eine iterative Implementation des neuen Moduls in den DIZen ermöglichen und notwendige Priorisierung bei der Verwendung des Moduls erleichtern.

 * Stufe 1: Prototypische Umsetzung der notwendigen Profile für die Datenitems der ACRIBiS-Studie
 * Stufe 2: Integration weiterer Vorarbeiten (vollständiger Datensatz aus ACRIBiS, HiGHmed Use Case Cardio, CAEHR, weitere Vorarbeiten)
 * Stufe 3: Abbildung der gesamten Kardiologie

### Wichtige Dokumente und Links
* [Modul im Simplifier](https://simplifier.net/MII-Erweiterungsmodul-Kardiologie/~introduction)
* [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie)
* [Beschreibung des MII-Kerndatensatzes in der Version 1.0 vom 10.3.2017 (PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)
* [Datenmodellbeschreibung des MII-Kerndatensatzes in ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-)

### Autoren und Ansprechpartner <!-- gerne ergänzen! -->

Leitung des Moduls:
* Merten Prüser

Technische Umsetzung und Implementation-Guide:
* Philip Goos
* Jendrik Richter
* Dirk Meyer zum Büschenfelde
* Anatol Bollinger
* Georg Fette

Beratung:
* Alexander Bartschke
* Julian Saß
* Felix Erdfelder
