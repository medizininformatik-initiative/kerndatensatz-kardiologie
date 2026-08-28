Die Anamnese bildet den fachlichen Schwerpunkt des Kardiologie-Moduls. Sie umfasst eine Vielzahl, im Rahmen der Patientenvorgeschichte und -befragung, zu erhebenden Angaben: kardiologische Diagnosen, Vitalparameter, Medikation sowie eine Reihe kardiologisch relevanter Einzelangaben (u. a. Klappenvitien, Krankenhausaufenthalte im letzten Jahr sowie oder atherosklerotische Ereignisse).

## Profile

- **MII PR Kardio Diagnose** — [StructureDefinition-mii-pr-kardio-diagnose.html](StructureDefinition-mii-pr-kardio-diagnose.html)

  **Zweck:** Profil zur Abbildung einer Diagnose im Kontext der Kardiologie.  

  **Parent:** MII_PR_Diagnose_Condition (KDS Modul Basis)  

  **Diff:**  
  - Condition.severity als Must-support
  - Condition.code umfasst ACRIBiS-spezifische Kodierung "kardio"
  - Condition.subject eingegrenzt auf Patienten-Referenz
  - Condition.recorder als Must-support
  - Condition.asserter als Must-support

- **MII PR Kardio Diagnose Prozedur Nein Unbekannt** — [StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html)

  **Zweck:** Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose bzw. Prozedur, oder die Unklarheit darüber, ab.

  **Parent:** HL7 FHIR R4 Observation

  **Diff:**
  - Observation.effective[x] mit Kardinalität 1..1
  - Observation.subject mit Kardinalität 1..1
  - Observation.value mit erweiterbarem Binding auf Angaben zu Nicht-Vorhandensein unter Verwendung von http://terminology.hl7.org/CodeSystem/v2-0532
  - Observation.code umfasst ACRIBiS-spezifische Kodierung "kardio" (analog zu MII_PR_Diagnose_Condition)
  - Observation.category mit required Binding auf HL7 FHIR R4 ObservationCategoryCodes

- **MII PR Kardio Atherosklerotisches Erstereignis** — [StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html)

  **Zweck:** Profil zur Erfassung des Datums des ersten atherosklerotischen Ereignisses.

  **Parent:**

  **Diff:**
  - ...

- **MII PR Kardio Anzahl KH Aufenthalte wg HF** — [StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html)

  **Zweck:** Profil zur Erfassung der Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz.

  **Parent:**

  **Diff:**
  - ...

- **MII PR Kardio Klappenvitium** — [StructureDefinition-mii-pr-kardio-klappenvitium.html](StructureDefinition-mii-pr-kardio-klappenvitium.html)

  **Zweck:** Profil zur Abbildung einer Herzklappenerkrankung.

  **Parent:**

  **Diff:**
  - ...

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
