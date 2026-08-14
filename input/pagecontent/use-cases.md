## Beispielfälle

Das Modul Kardiologie enthält mehrere Beispielinstanzen, die die Anwendung der Profile demonstrieren.

### A. Beispielpatient

* **MII_EXA_Kardio_EKG_Referenz** — EKG-Referenz mit Rasterung und Kalibrierung
* **MII_EXA_Kardio_EKG_Geraetedefinition_Mortara** — Mortara-EKG-Geräte-Definition

### B. EKG-Demonstrationen

* **MII_EXA_Kardio_EKG_Durchführung** — Vollständige EKG-Durchführung mit mehreren Kanälen (I, II, III)
* **MII_EXA_Kardio_EKG_Kanal_I/II/III** — Einzelne EKG-Kanal-Beispiele

### C. Diagnosen

* **MII_EXA_Kardio_Diagnose_Embolischer_Gefaessverschluss** — Embolischer Gefäßverschluss (Condition)
* **MII_EXA_Kardio_Myokardinfarkt** — Myokardinfarkt (Condition)

### D. Device-Implantationen

* **MII_EXA_Kardio_Diagnose_Myokardinfarkt** — Myokardinfarkt
* **MII_EXA_Kardio_Device_ICD** — ICD-Implantation (Device + Procedure)
* **MII_EXA_Kardio_Kardiale_Deviceimplantation_ICD** — ICD-Implantation (Procedure)
* **MII_EXA_Kardio_Kein_Device** — Ausschluss device-Implantation

### E. Geräteprogrammierung

* **MII_EXA_Kardio_Geräteprogrammierung_VVI** — VVI-Modus Programierung

### F. LVEF (linksventrikuläre Ejektionsfraktion)

* **MII_EXA_Kardio_LVEF** — LVEF-Observation (z.B. 55%)

### F. Scores

* **MII_EXA_Kardio_MRS** — modifizierte Rankin-Skala (mRS)
* **MII_EXA_Kardio_Score_NYHA_II** — NYHA-Klasse II

### G. Rauchverhalten

* **MII_EXA_Kardio_Raucherstatus** — Raucherstatus (Current smoker / Ex-smoker / Never smoker)

### H. Anzahl KH-Aufenthalte wg. Heart Failure

* **MII_EXA_Kardio_Anzahl_KH_Aufenthalte_wg_HF** — Anzahl KH-Aufenthalte
* **MII_EXA_Kardio_Anzahl_KH_Aufenthalte_wg_HF2** — Alternative Darstellung

### I. Atherosklerotische Ereignisse

* **MII_EXA_Kardio_Atherosklerotisches_Erstereignis** — Atherosklerotisches Erstereignis

### J. Questionnaire (ACRIBiS-FollowUp)

* **MII_EXA_Kardio_Questionnaire_Patient** — Patienten-befragung
* **MII_EXA_Kardio_Questionnaire_Arzt** — Arzt-befragung
* **MII_EXA_Kardio_Questionnaire_Angehoerige** — Angehörigen-befragung
* **MII_EXA_Kardio_Questionnaire_Andere** — Andere(Beiwert)
* **MII_EXA_Kardio_Rolle_Kardiologe** — Kardiologen-Rolle
* **MII_EXA_Kardio_NBG_Schrittmachermodus** — NBG-Schrittmachermodus

---

## Beispielfall: Kardiale Deviceimplantation

Ein typisches Anwendungsbeispiel ist die Erfassung einer **kardialen Deviceimplantation** (z.B. ICD, CRT, LVAD):

1. **Device** — Das implantierte Gerät (Typ, Seriennummer, Hersteller)
2. **Procedure** — Die Implantationsprozedur mit SNOMED- und OPS-Codes
3. **BodySite** — Implantationsstelle (Herz, linker/righter Ventrikel)
4. **DeviceMetric** (optional) — Geräteprogrammierung (z.B. VVI-Modus)

Die vollständige Beispielinstanz (`MII_EXA_Kardio_Kardiale_Deviceimplantation_ICD`) demonstriert alle notwendigen Elemente.

---

**Hinweis:** Weitere Beispiele finden sich in `input/fsh/instances/`. Jede Instanz hat einen `Usage: #example` Annotation und kann über die IG-Artefakt-Liste eingesehen werden.