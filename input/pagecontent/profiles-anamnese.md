Die Anamnese bildet den fachlichen Schwerpunkt des Kardiologie-Moduls. Sie umfasst eine Vielzahl, im Rahmen der Patientenvorgeschichte und -befragung, zu erhebenden Angaben: kardiologische Diagnosen, Vitalparameter, Medikation sowie eine Reihe kardiologisch relevanter Einzelangaben (u. a. Klappenvitien, Krankenhausaufenthalte im letzten Jahr sowie oder atherosklerotische Ereignisse).

## Profile

- **MII PR Kardio Diagnose** — [StructureDefinition-mii-pr-kardio-diagnose.html](StructureDefinition-mii-pr-kardio-diagnose.html)

  **Zweck:** Profil zur Abbildung einer Diagnose im Kontext der Kardiologie.  

  **Parent:** MII_PR_Diagnose_Condition (KDS Modul Basis)  

  **Diff:**  
  - `severity` als Must-support
  - `code` umfasst ACRIBiS-spezifische Kodierung "kardio"
  - `subject` eingegrenzt auf Patienten-Referenz
  - `recorder` als Must-support
  - `asserter` als Must-support


- **MII PR Kardio Diagnose Prozedur Nein Unbekannt** — [StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html)

  **Zweck:** Dieses Profil bildet das anamnestische Nichtvorliegen einer Diagnose bzw. Prozedur, oder die Unklarheit darüber, ab.

  **Parent:** Observation

  **Diff:**

  - `effective[x]` mit Kardinalität 1..1
  - `subject` mit Kardinalität 1..1
  - `value` mit erweiterbarem Binding auf Angaben zu Nicht-Vorhandensein unter Verwendung von http://terminology.hl7.org/CodeSystem/v2-0532
  - `code` umfasst ACRIBiS-spezifische Kodierung "kardio" (analog zu MII_PR_Diagnose_Condition)
  - `category` mit required Binding auf ObservationCategoryCodes


- **MII PR Kardio Atherosklerotisches Erstereignis** — [StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html)

  **Zweck:** Profil zur Erfassung des Datums des ersten atherosklerotischen Ereignisses.

  **Parent:** Observation

  **Diff:**
  - `code` fixiert auf Code "ae" aus Kardio-Modul-eigenem Codesystem (fixed)
  - `subject` mit Referenz auf Patient
  - `effective[x]` mit Kardinalität 1..1 MS zur Angabe des Zeitpunkts der Beobachtung
  - `value[x]` mit Kardinalität 0..0 und Abbildung der Information in `Component`.
  - `component[erkrankung].code` enthält SNOMED CT Code 439401001 (Diagnosis)
  - `component[erkrankung].value[x]` aus ValueSet `MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOEMDCT` (required)
  - `component[datum].code` fixiert auf SNOMED CT Code 432213005 (Date of diagnosis)
  - `component[datum].value[x]` als valueDateTime zur Angabe des Datum des bezeichneten atherosklerotischen Ereignisses (z.B. Herzinfarkt, Apoplex, pAVK, ...)


- **MII PR Kardio Anzahl KH Aufenthalte wg HF** — [StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html)

  **Zweck:** Profil zur Erfassung der Anzahl von Krankenhausaufenthalten wegen Herzinsuffizienz.

  **Parent:** Observation


  **Diff:**
  - `effective[x]` ist auf `Period` beschränkt (Erfassungszeitraum)
  - `value[x]` als `integer` (Anzahl) oder `CodeableConcept` (bei Unbekanntheit)
  - `valueInteger` erfordert positiven Wert (Invariant `mii-kardio-pos-int`)
  - `valueCodeableConcept` aus ValueSet `MII_VS_Kardio_Nein_Unbekannt` (required)
  - `component` geslicet für `Grund` mit SNOMED CT Code 406524005 (Reason for visit diagnosis)
  - `component[Grund].valueCodeableConcept` fixiert auf SNOMED CT Code 84114007 (Heart failure)

- **MII PR Kardio Klappenvitium** — [StructureDefinition-mii-pr-kardio-klappenvitium.html](StructureDefinition-mii-pr-kardio-klappenvitium.html)

  **Zweck:** Profil zur Abbildung einer Herzklappenerkrankung.

  **Parent:** MII_PR_Kardio_Diagnose

  **Diff:**
  - `severity` aus ValueSet `MII_VS_Kardio_Klappenvitium_Grad_SNOMEDCT` (required) zur Angabe des Erkrankungsgrades
  - `code.coding[icd10-gm]` aus ValueSet `MII_VS_Kardio_Klappenvitium_ICD` (required)
  - `code.coding[sct]` aus ValueSet `MII_VS_Kardio_Klappenvitium_SNOMEDCT` (required)
  - `code.coding[alpha-id]` aus ValueSet `MII_VS_Kardio_Klappenvitium_ALPHAID` (required)
  - `code.coding[orphanet]` und `code.coding[kardio]` nicht erlaubt (`..0`)

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
