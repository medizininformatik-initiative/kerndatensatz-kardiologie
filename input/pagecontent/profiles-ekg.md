Diese Gruppe umfasst Metadaten und technische Informationen zu EKG-Aufnahmen. **Die Rohdaten eines EKGs werden hier nicht in FHIR abgebildet** (dafür gibt es andere besser geeignete Formate, zum Beispiel DICOM), sondern Metadaten und Referenzen. Die Abbildung der EKG-Metadaten mit Referenz auf die Rohdaten ermöglicht das Auffinden und Beantragen von EKG-Daten für Datennutzungsprojekte.

Die Modellierung ist angelehnt an das Domain Information Model der Normenfamilie ISO/IEEE 11073 und verwendet auch ihre Nomenklatur.

## Disclaimer

Die aufgelisteten Profile befinden sich in einem frühen experimentellen alpha-Status und sollten aktuell noch nicht implementiert werden. Eine Ausarbeitung der Profile erfolgt zukünftig im Rahmen der weiteren Umsetzungsstufen des Moduls Kardiologie.

## Profile

**MII PR Kardio EKG Durchführung** — [StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.html](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.html)

  **Zweck:** Profil zur Erfassung der Durchführung eines EKG.

  **Parent:** Procedure (MII Core Modul Prozedur)

  **Diff:**
  - `category` enthält SNOMED CT Code 165197003 (Diagnostic assessment)
  - `code` aus ValueSet `MII_VS_Kardio_EKG_Prozedur_SNOMEDCT` (required)
  - `subject` ist auf Patienten-Referenz beschränkt
  - `performedDateTime` und `performedPeriod` als Must-Support
  - `bodySite` enthält SNOMED CT Code 80891009 (Heart structure)
  - `usedReference` ist auf Device-Referenz beschränkt

**MII PR Kardio EKG Kanal** — [StructureDefinition-mii-pr-kardio-ekg-kanal.html](StructureDefinition-mii-pr-kardio-ekg-kanal.html)

  **Zweck:** Abbildung eines EKG-Kanals (I, II, III, V1-V6, aVR, aVL, aVF).

  **Parent:** Device

  **Diff:**
  - `type` enthält MDC-Code 69799 (MDC_DEV_ECG_CHAN)
  - `property` gesliced für Kanalbezeichnung (MDC_ATTR_CHAN_NUM_LOGICAL)
  - `property[kanalbezeichnung].valueCode` aus ValueSet `MII_VS_Kardio_EKG_Kanaele_MDC` (required)
  - `parent` Referenz auf `MII_PR_Kardio_EKG_Geraet` (Must-Support)

**MII PR Kardio EKG Referenz** — [StructureDefinition-mii-pr-kardio-ekg-referenz.html](StructureDefinition-mii-pr-kardio-ekg-referenz.html)

  **Zweck:** Referenzierung eines EKGs mit Rohdaten an externem Ort. Hier analog zu Bildgebende Verfahren File-
  oder Netzwerk-URL

  **Parent:** DocumentReference

  **Diff:**
  - `type` auf LOINC 11524-6 fixiert
  - `subject`, `date` und `content` als Must-Support
  - `author` auf Device-Referenz beschränkt
  - `content.attachment.url` als Must-Support

**MII PR Kardio EKG Geraet** — [StructureDefinition-mii-pr-kardio-ekg-geraet.html](StructureDefinition-mii-pr-kardio-ekg-geraet.html)

  **Zweck:** Profil eines EKG-Gerätes.

  **Parent:** Device

  **Diff:**
  - `manufacturer` und `deviceName` als Must-Support
  - `type` aus ValueSet `MII_VS_Kardio_Objekte_Geraete_MDC` (required)

**MII PR Kardio EKG Geraetedefinition** — [StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.html](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.html)

  **Zweck:** Gerätedefinition eines EKG-Gerätes.

  **Parent:** DeviceDefinition

  **Diff:**
  - `manufacturer[x]` und `deviceName` als Must-Support

**MII PR Kardio EKG Annotation** — [StructureDefinition-mii-pr-kardio-ekg-annotation.html](StructureDefinition-mii-pr-kardio-ekg-annotation.html)

  **Zweck:** Erfassung von EKG-Annotationen und Interpretationen z.B. Intervalle, Zeiten, Rhythmus etc.

  **Parent:** Observation

  **Diff:**
  - `category` enthält `vital-signs`
  - `code` aus ValueSet `MII_VS_Kardio_Metriken_EKG_Annotationen_MDC` (required)
  - `subject` ist auf Patienten-Referenz beschränkt
  - `effective[x]` (dateTime, Period, instant) als Must-Support
  - `device` auf Device-Referenz beschränkt
  - `derivedFrom` enthält Referenz auf `DocumentReference` (EKG Rohdaten)

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
