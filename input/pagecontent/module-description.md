### Einleitung

Das Basismodul Kardiologie umfasst die Beschreibung der Standardisierung und Strukturierung der medizinischen Datenerfassung zu kardiovaskulären Erkrankungen. Schwerpunkt sind qualitative, bzw. objektivierbare Parameter aus der Anamnese, die als weichenstellendes Element der Arzt-Patienten-Interaktion dienen und auf deren Grundlage wesentliche diagnostische und therapeutische Entscheidungen getroffen werden.

Das langfristige übergeordnete Ziel des kardiologischen Kerndatensatzes ist es, eine aus klinischer Perspektive zielgerichtete und scharfe Charakterisierung des individuellen kardiologischen Patienten in standardisierter Form abzubilden, die so einen Datenaustausch zwischen verschiedenen Kliniken und später auch Hausarztpraxen ermöglicht.

---

## Zielsetzung

Das Modul Kardiologie soll in den Datenintegrationszentren (DIZ) bei der Aufbereitung von vorhandenen Patientendaten aus dem Versorgungskontext unterstützen. Es baut bewusst auf bereits vorhandenen Modulen des MII-KDS auf (base, meta, icu, isik, Diagnose, Prozedur) und wiederverwendet bestehende Strukturen, wo möglich.

Das Modul wird iterativ in drei Umsetzungsstufen entwickelt:

* **Stufe 1 (aktuell):** Prototypische Umsetzung für die ACRIBiS-Studie, Fokus auf Kern-Datenitems zur Standardisierung der kardialen Datenerfassung
* **Stufe 2:** Integration weiterer Vorarbeiten (HiGHmed Use Case Cardio, CAEHR, weitere Studien)
* **Stufe 3:** Abbildung der gesamten Kardiologie

---

## Mitwirkung und Kontakt

* **Modulsprecher:** Merten Prüser
* **Technische Umsetzung / IG:** Philip Goos, Jendrik Richter, Alexandra Cieslak, Malik Atamne
* **Kommentareinreichung:** [GitHub-Issues](https://github.com/medizininformatik-initiative/kerndatensatz-kardiologie/issues)
* **Diskussionsforum:** [MII Modul Kardio Chat (Zulip)](https://mii.zulipchat.com/#narrow/channel/505571-MII-KDS-Kardio)

---

## Kurzzusammenfassung

Das Kardiologie-Modul ist Teil des Kerndatensatzes (KDS) der Medizininformatik Initiative (MII) und beschreibt die FHIR-Repräsentation kardiovaskulärer Erkrankungen. Es adressiert:

* Anamnese und klinische Parameter (Rauchverhalten, NYHA-Score, modifizierte Rankin-Skala)
* Diagnosen (Myokardinfarkt, Embolien, Atherosklerotische Ereignisse)
* Prozeduren (Device-Implantationen, PCI)
* EKG-Durchführung und -Annotation (Kanäle, Rasterung, Referenz)
* Geräte (Schrittmacher, ICD, LVAD/BiVAD)
* LVEF und Klappenvitium

Die Spezifikation dient als zentrale und verbindliche Grundlage für die syntaktische und semantische Kodierung der Kardiologie-Daten in den DIZ.

---

## Bezüge zu anderen Modulen

Das Kardiologie-Modul baut auf folgenden MII-KDS-Modulen auf:
* **base:** Basistruktur (Patient, Practitioner, Organization), zentrale Valuesets
* **meta:** Meta-Informationen (Lizenz, Versionierung, Publisher)
* **icu:** Eventuell wiederverwendete Profile (Kopfumfang, etc.)
* **medikation:** Pharmakotherapie (bzw. zukünftig: Diagnose, Prozedur)
* **isik:** ISiKSpezifische Codierungen bei Bedarf

Weiterhin relevant für komplementäre Daten sind:
* **Diagnose:** ICD-Kodierung, snomed-ct Diagnosen (überschneidend mit Kardiologie-Diagnosen)
* **Prozedur:** OPS-Codierung, Verfahrensbeschreibungen (überschneidend mit Device-Implantationen)
* **Labor:** Laborparameter (z.B. Troponin, BNP/NT-proBNP bei Heart Failure)
* **Molekulargenetisch:** Genetische Varianten (bei familiärer Belastung / Marfan / LQTS etc.)

Das Modul versteht sich als themenspezifische Ergänzung, die bereits modellierte Datenelemente wiederverwendet, anstatt sie zu duplizieren.