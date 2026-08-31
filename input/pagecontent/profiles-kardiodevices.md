Diese Gruppe umfasst die Profilierung kardialer (Implantat-)Geräte.

## Profile

### **MII PR Kardio Kardiale Deviceimplantation** — [StructureDefinition](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.html)

  **Zweck:** Profil zur Abbildung einer Implantation (Prozedur) eines Herzschrittmachers, ICD, CRT oder LVAD/BiVAD.

  **Parent:** MII_PR_Prozedur_Procedure

  **Diff:**
  - `code` mit Binding auf `MII_VS_Kardio_Kardiale_Deviceimplantation_[...]` für OPS und SCT
  - `subject` mit Referenz auf Patient
  - `performed[x]` mit Begrenzung auf `performedDateTime` oder `performedPeriod`
  - `bodySite` mit Kardinalität 1..* als verpflichtende Angabe
  - `focalDevice.manipulated` mit Kardinalität 1..* als verpflichtende Angabe

### **MII PR Kardio Device** — [StructureDefinition](StructureDefinition-mii-pr-kardio-device.html)

  **Zweck:** Allgemeines Device-Profil für kardiale Geräte.

  **Parent:** Device

  **Diff:**
  - `status` des Device als Must-support
  - `expirationDate` des Device als Must-support
  - `type` mit required ValueSet `MII_VS_Kardio_Geraetetyp_SNOMEDCT`
  - `patient` mit Referenz auf Patient

### **MII PR Kardio Geraeteprogrammierung** — [StructureDefinition](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.html)

  **Zweck:** Erfassung der Geräteprogrammierung (z.B. VVI-Modus).

  **Parent:** Observation

  **Diff:**
  - `code` required Angabe eines `DeviceMetricAndComponentTypes` (MDC)-Codes
  - `subject` als verpflichtend anzugebende Referenz auf Patient
  - `focus` für mögliche Referenz auf eine `DeviceMetric` (wie z.B. Kardio-Profil `NBG Schrittmachermodus`)
  - `effective[x]` für verpflichtende Angabe des Datums
  - `value[x]`required Angabe mit VS `MII_VS_Kardio_Geraeteprogrammierung_MDC`

### **MII PR Kardio NBG Schrittmachermodus** — [StructureDefinition](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.html)

  **Zweck:** Abbildung der Schrittmachermodus-Einstellung nach NBG-Standard.

  **Parent:** DeviceMetric

  **Diff:**
  - `type` required Angabe eines `DeviceMetricAndComponentTypes` (MDC)-Codes
  - `source` verpflichtende Referenz auf zugehöriges Device
  - `category` fixiert auf den Wert `setting`

---

**Hinweis:** Auf dieser Seite enthaltene Links führen auf die Artifact-Übersicht zur Ressource inkl. Verlinkung von Abhängigkeiten, Beispiel-Ressourcen und verwendeten Terminologien.
