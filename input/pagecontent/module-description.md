# Beschreibung Modul Kardiologie

## Einleitung

Das Modul Kardiologie ist als Modul zur Datenerfassung in strukturierter und standardisierter Form, so dass fachspezifische Information zu kardiovaskuläre Erkrankungen erfasst werden. Der verwendete Datensatz umfasst eine Reihe von qualitative und quantitative Parameter, die eine Datengrundlage liefern für Diagnostik und Behandlung kardiovaskulärer Erkrankungen. Zudem sind sogenannte prediktive Score Parameter eingeschlossen, die aufgrund dieser Daten Wahrscheinlichkeiten für kardiovaskuläre Events repräsentieren und den Einfluss von Medikation und Lebensführung einbeziehen. 

Die Auswahl der Parameter als Grundlage zur Erfassung von Daten zur Behandlung kardiologischer Patientinnen/en entstand durch Zusammenarbeit von Kardiologinnen/en verschiedener Universitätslklinika in Deutschland und wurde im Rahmen des Medizininformatik Projekt ACIRBiS erstellt. Als Ausgangspunkte dienten die Datensätze die von der [DGK](https://dgk.org/) und der [INA](https://www.ina.gematik.de/community-hub/vernetzen-mitwirken/arbeitskreise/erstellung-eines-kardiologischen-basisdatensatzes), die in Umfang und Detailgrad nicht übernommen worden sind, jedoch zugunsten der Handhabbarkeit der Daten in reduzierter Form in das KDS Modul aufgenommen worden sind.

>! Das Basismodul Kardiologie umfasst die Beschreibung der Standardisierung und Strukturierung der medizinischen Datenerfassung zu kardiovaskulären Erkrankungen. Schwerpunkt sind qualitative, bzw. objektivierbare Parameter aus der Anamnese, die als weichenstellendes Element der Arzt-Patienten-Interaktion dienen und auf deren Grundlage wesentliche diagnostische und therapeutische Entscheidungen getroffen werden.

>! Das langfristige übergeordnete Ziel des kardiologischen Kerndatensatzes ist es, eine aus klinischer Perspektive zielgerichtete und scharfe Charakterisierung des individuellen kardiologischen Patienten in standardisierter Form abzubilden, die so eine Forschungsnutzung von Daten aus verschiedenen Kliniken oder auch Hausarztpraxen ermöglicht.

---

## Zielsetzung

Die im  Modul Kardiologie festgelegten Parameter bestimmen die Dateninhalte, die als Patienten - und Versorgungsdaten in der Klinik als auch im Forschungskontext Verwendung finden und langfristig von den Danteninterationszentren (DIZ) in standardisierter Form bereitgestellt werden können. Die Gesamtheit des kardiologischen Datensatzes ethält neben hoch-spezialisierten Parametern, die gezielt kardiologische Informationen abbilden, auch solche, die notwendigerweise die Person identifiziert und auch grundlegende andere Informationen. Diese sind im Modul Kardiologie abgebildet jedoch werden die Profile und Codierugnen aus bereits bestehenden Modulen übernommen, und somit in das System der KDS Module (Module PERSON, Modul ICU, u.a.) eingebettet und verlinkt. Damit werden die Daten über die Fachgebiete hinweg standardisiert und integriert, zudem werden gesetzliche Standards wie ISIK berücksichtigt, so dass langfristig eine übergreifende Datenerhebung ermöglicht wird.

In der Umsetzung werden drei Stufen durchlaufen, in denen sukzessiv der kardiologische Datensatz erweitert wird und in der Endphase die Parameter des allgemeine kardiologsichen Datensatzes als FHIR Profile vorliegen und zur Nutzung in den DIZen bereitstehen. Die Phasen lassen sich wie folgt definieren:

* **Stufe 1 (aktuell):** Prototypische Umsetzung eines reduzierten Datensatzes der  [ACRIBiS-Studie](https://www.medizininformatik-initiative.de/de/acribis-personalisierte-risikobewertungen-fuer-herz-kreislauf-erkrankungen) in deren Fokus sogenannte Kern-Datenitems zur Standardisierung der kardialen Datenerfassung enthalten sind, dies umfasst neben grundlegenden kardiologischen Parametern auch aus diesen berechnete Score-Werte enthalten zur individuellen Risikobewertung. 
* **Stufe 2:** Integration weiterer Vorarbeiten aus MII - Forschungsprojekten, Gematik und Patientenvertretungen (vollständiger Datensatz aus [ACRIBiS](https://www.medizininformatik-initiative.de/de/acribis-personalisierte-risikobewertungen-fuer-herz-kreislauf-erkrankungen), [HIGHmed Use Case](https://www.medizininformatik-initiative.de/de/acribis-personalisierte-risikobewertungen-fuer-herz-kreislauf-erkrankungen), [CAEHR](https://www.medizininformatik-initiative.de/de/digitaler-fortschrittshub-caehr), [INA](https://www.ina.gematik.de/community-hub/vernetzen-mitwirken/arbeitskreise/erstellung-eines-kardiologischen-basisdatensatzes), standardisierte Patientenfragebögen [PROMs](https://future.hospital/wissensdatenbank/details/patientenzentrierte-erfassung-des-wohlbefindens-proms-und-prems), u.a.)
* **Stufe 3:** Erweiterung des Moduls Kardiologie durch die Abbildung zusätzlicher Parameter der kardiologischen Versorgung, die auch seltene Erkrankungen und weitere Risikobewertungen einschliessen. 

>!Das Modul Kardiologie soll in den Datenintegrationszentren (DIZ) bei der Aufbereitung und Bereitstellung von vorhandenen Patientendaten aus dem Versorgungskontext unterstützen. Es baut bewusst auf bereits vorhandenen Modulen des MII-KDS auf (base, meta, icu, isik, Diagnose, Prozedur) und verwendet, wo möglich, bestehende Strukturen wieder.

>!Das Modul wird iterativ in drei Umsetzungsstufen entwickelt:

>!* **Stufe 1 (aktuell):** Prototypische Umsetzung für die ACRIBiS-Studie, Fokus auf Kern-Datenitems zur Standardisierung der kardialen Datenerfassung
>!* **Stufe 2:** Integration weiterer Vorarbeiten (vollständiger Datensatz aus ACRIBiS, HiGHmed Use Case Cardio, CAEHR, weitere Vorarbeiten)
>!* **Stufe 3:** Abbildung der gesamten Kardiologie

---

### Umfang der Spezifikation

Das Modul adressiert:

* **Anamnese und klinische Parameter:** Erfassung der individuellen Krankengeschichte bezüglich von Vorerkrankungen die relevant für die Diagnose und Behandlung von kardiovaskulären Erkrankungen sind (Allergie, Symptom, Klappenvitium, Krankenhausaufenthalte, Echoparameter, etc.)
* **Diagnostik:** Kardiologische Befunde, die aus anamnistischen Daten abgeleitet, festgestellt wurden. (Myokardinfarkt, Embolien, Atherosklerotische Ereignisse, etc.)
* **Skalen:** Strukturierte Bewertung und Einschätzung funktionaler Kapazitäten durch berechnete oder berichtete Zustände (NYHA-Score, modifizierte Rankin-Skala, CCS-Grad, Fontaine-Stadium, etc.)
* **Risikofaktoren:** Parameter die besondere Risikofaktoren im Vorfeld oder bei der Entwicklung kardiale Erkrankungen gelten werden erhoben und unterteilen sich hier in verhaltenbedingte und genetische Faktoren (Rauchverhalten, familiäre Prädisposition, Alkoholkonsum, etc.)
* **Kardiologische Geräte** Implantierbare Geräte zur Therapie und Überwachung kardialer Erkrankungen (Schrittmacher, ICD, LVAD/BiVAD, etc.)
* **Prozeduren:** Behandlungen und Eingriffe zu therapeutischem und/oder diagnostischen Zwecken (Device-Implantationen, PCI, Transplatation, etc.)
* **EKG-Metadaten:** Beschreibenden Parameter die EKG Messungen spezifizieren und aus den Messungen abgeleitete analytische Daten dr EKG Messkurve (Messung, Kanäle, Rasterung, Rohdatenreferenz)

⚠️ Hinweis: Im Kontext der Anamnese wird das anamnestische Nicht-Vorliegen von Erkrankungen ebenfalls abgebildet. Diese Informationen dienen damit ebeso zur Bewertung des Gesundheitszustandes wie Diagnosen manifester Erkrankungen.

---

## Status des Moduls

Das Kardiologie-Modul befindet sich aktuell in **Umsetzungsstufe 1 (siehe oebn, prototypisch)**.

* **Aktuelle stabile Version:** keine (s. o.)
* **Vorschauversion:** [2026.0.0-alpha.3](https://simplifier.net/mii-erweiterungsmodul-kardiologie/~releases)
* **Reifegrad:** Draft / Experimental

>! Alle veröffentlichten FHIR-Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegrad abgeleitet werden kann.
>! Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen.
>! Verpflichtende und ballotierte Ergebnisse werden zukünftig unter dem Tab 'Packages' zu finden sein.
