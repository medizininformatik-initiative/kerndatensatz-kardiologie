## Einleitung

Das Modul Kardiologie ist als Modul zur Datenerfassung in strukturierter und standardisierter Form, so dass fachspezifische Information zu kardiovaskuläre Erkrankungen erfasst werden. Der verwendete Datensatz umfasst eine Reihe von qualitative und quantitative Parameter, die eine Datengrundlage liefern für Diagnostik und Behandlung kardiovaskulärer Erkrankungen. Zudem sind sogenannte prediktive Score Parameter eingeschlossen, die aufgrund dieser Daten Wahrscheinlichkeiten für kardiovaskuläre Events repräsentieren und den Einfluss von Medikation und Lebensführung einbeziehen. 

Die Auswahl der Parameter als Grundlage zur Erfassung von Daten zur Behandlung kardiologischer Patientinnen/en entstand durch Zusammenarbeit von Kardiologinnen/en verschiedener Universitätslklinika in Deutschland und wurde im Rahmen des Medizininformatik Projekt ACIRBiS erstellt. Als Ausgangspunkte dienten die Datensätze die von der [DGK](https://dgk.org/) und der [INA](https://www.ina.gematik.de/community-hub/vernetzen-mitwirken/arbeitskreise/erstellung-eines-kardiologischen-basisdatensatzes), die in Umfang und Detailgrad nicht übernommen worden sind, jedoch zugunsten der Handhabbarkeit der Daten in reduzierter Form in das KDS Modul aufgenommen worden sind.

<div class="ig-highlight ig-highlight-green">
<p>Das Basismodul Kardiologie umfasst die Beschreibung der standardisierten und strukturierten medizinischen Datenerfassung kardiovaskulärer Erkrankungen bzw. deren Symptome, Behandlungen oder auch der Medikation. Der Fokus liegt hiebei auf qualitativen und leicht objektivierbaren Parameteren in der Anamnese, die als  grudlegenden Informationen der Arzt-Patienten-Interaktion dienen und dazu dienen diagnostische und therapeutische Entscheidungen zu treffen.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<p>Das langfristige übergeordnete Ziel des kardiologischen Kerndatensatzes ist es, eine, aus klinischer Perspektive zielgerichtete und detaillierte Charakterisierung von Patienteinnen mir kardiologischen Erkrankungen in standardisierter Form abzubilden, die so eine Nutzung als homogene Forschungsdaten aus verschiedenen Kliniken oder auch Hausarztpraxen ermöglicht.</p>
</div>

Das Kerndatensatzmodul Kardiolgie wurde als eigenständiges Modul des Kerndatensatzes der MII konzipiert, ist jedoch über die gemeinsame Nutzung von verschiedenen Datenitems mit bereits existierenden Modulen eingebunden. Die untenstehende Graphik zeigt die gegenwärtigen (Stand 08.2026) Module an und in dieser werden die grundlegenden Datenquellen wie Person, Fall oder auch Medikation hervorgehoben. Die Übersicht visualisierte jedoch keine Abhängigkeiten oder inhaltlichen Gemeinsamkeiten der einzelnen Module auf. 

![Übersicht Kerndatensatz](Kerndatensatz.png)

(aus: [Medizininformatik Initiative Webseite](https://www.medizininformatik-initiative.de/de/der-kerndatensatz-der-medizininformatik-initiative)] 

## Zielsetzung

Die im  Modul Kardiologie festgelegten Parameter bestimmen die Dateninhalte, die als Patienten - und Versorgungsdaten in der Klinik als auch im Forschungskontext Verwendung finden und langfristig von den Danteninterationszentren (DIZ) in standardisierter Form bereitgestellt werden können. Die Gesamtheit des kardiologischen Datensatzes ethält neben hoch-spezialisierten Parametern, die gezielt kardiologische Informationen abbilden, auch solche, die notwendigerweise die Person identifiziert und auch grundlegende andere Informationen. Diese sind im Modul Kardiologie abgebildet jedoch werden die Profile und Codierugnen aus bereits bestehenden Modulen übernommen, und somit in das System der KDS Module ([Module PERSON](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.person/2025.0.1/~introduction), [Modul ICU](https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin), u.a.) eingebettet und verlinkt. Damit werden die Daten über die Fachgebiete hinweg standardisiert und integriert, zudem werden gesetzliche Standards wie ISIK berücksichtigt, so dass langfristig eine übergreifende Datenerhebung ermöglicht wird.

In der Umsetzung werden drei Stufen durchlaufen, in denen sukzessiv der kardiologische Datensatz erweitert wird und in der Endphase die Parameter des allgemeine kardiologsichen Datensatzes als FHIR Profile vorliegen und zur Nutzung in den DIZen bereitstehen. Die Phasen lassen sich wie folgt definieren:

* **Stufe 1 (aktuell):** Prototypische Umsetzung eines reduzierten Datensatzes der  [ACRIBiS-Studie](https://www.medizininformatik-initiative.de/de/acribis-personalisierte-risikobewertungen-fuer-herz-kreislauf-erkrankungen) in deren Fokus sogenannte Kern-Datenitems zur Standardisierung der kardialen Datenerfassung enthalten sind, dies umfasst neben grundlegenden kardiologischen Parametern auch aus diesen berechnete Score-Werte enthalten zur individuellen Risikobewertung. 
* **Stufe 2:** Integration weiterer Vorarbeiten aus MII - Forschungsprojekten, Gematik und Patientenvertretungen (vollständiger Datensatz aus [ACRIBiS](https://www.medizininformatik-initiative.de/de/acribis-personalisierte-risikobewertungen-fuer-herz-kreislauf-erkrankungen), [HIGHmed Use Case](https://www.medizininformatik-initiative.de/de/acribis-personalisierte-risikobewertungen-fuer-herz-kreislauf-erkrankungen), [CAEHR](https://www.medizininformatik-initiative.de/de/digitaler-fortschrittshub-caehr), [INA](https://www.ina.gematik.de/community-hub/vernetzen-mitwirken/arbeitskreise/erstellung-eines-kardiologischen-basisdatensatzes), standardisierte Patientenfragebögen [PROMs](https://future.hospital/wissensdatenbank/details/patientenzentrierte-erfassung-des-wohlbefindens-proms-und-prems), u.a.)
* **Stufe 3:** Erweiterung des Moduls Kardiologie durch die Abbildung zusätzlicher Parameter der kardiologischen Versorgung, die auch seltene Erkrankungen und weitere Risikobewertungen einschliessen. 

Das Modul Kardiologie soll in den Datenintegrationszentren (DIZ) bei der Aufbereitung und Bereitstellung von vorhandenen Patientendaten aus dem Versorgungskontext unterstützen. Es baut bewusst auf bereits vorhandenen Modulen des MII-KDS auf (base, meta, icu, isik, Diagnose, Prozedur) und verwendet, wo möglich, bestehende Strukturen wieder.
---

## Spezifikation der Parameter

Das Modul adressiert:

* **Anamnese und klinische Parameter:** Erfassung der individuellen Krankengeschichte bezüglich von Vorerkrankungen die relevant für die Diagnose und Behandlung von kardiovaskulären Erkrankungen sind (Allergie, Symptom, Klappenvitium, Krankenhausaufenthalte, Echoparameter, etc.)
* **Diagnostik:** Kardiologische Befunde, die aus anamnistischen Daten abgeleitet, festgestellt wurden. (Myokardinfarkt, Embolien, Atherosklerotische Ereignisse, etc.)
* **Skalen:** Strukturierte Bewertung und Einschätzung funktionaler Kapazitäten durch berechnete oder berichtete Zustände (NYHA-Score, modifizierte Rankin-Skala, CCS-Grad, Fontaine-Stadium, etc.)
* **Risikofaktoren:** Parameter die besondere Risikofaktoren im Vorfeld oder bei der Entwicklung kardiale Erkrankungen gelten werden erhoben und unterteilen sich hier in verhaltenbedingte und genetische Faktoren (Rauchverhalten, familiäre Prädisposition, Alkoholkonsum, etc.)
* **Kardiologische Geräte** Implantierbare Geräte zur Therapie und Überwachung kardialer Erkrankungen (Schrittmacher, ICD, LVAD/BiVAD, etc.)
* **Prozeduren:** Behandlungen und Eingriffe zu therapeutischem und/oder diagnostischen Zwecken (Device-Implantationen, PCI, Transplatation, etc.)
* **EKG-Metadaten:** Beschreibenden Parameter die EKG Messungen spezifizieren und aus den Messungen abgeleitete analytische Daten dr EKG Messkurve (Messung, Kanäle, Rasterung, Rohdatenreferenz)

⚠️ Hinweis: Im Kontext der Anamnese wird das anamnestische Nicht-Vorliegen von Erkrankungen ebenfalls abgebildet. Diese Informationen dienen damit ebeso zur Bewertung des Gesundheitszustandes wie Diagnosen manifester Erkrankungen.
