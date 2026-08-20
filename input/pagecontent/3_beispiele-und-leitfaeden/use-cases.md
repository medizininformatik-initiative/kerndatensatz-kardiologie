# Beispielfälle

Das Modul Kardiologie enthält für jedes Profil Beispielinstanzen, die die Anwendung der Profile demonstrieren.

## Zweck der Beispiele

Diese Fallbeispiele dienen als:

- Implementierungshilfe: Konkrete Anwendung der abstrakten Profile
- Validierung: Überprüfung der Profilkonformität
- Schulungsmaterial: Verständnis der Datenmodellierung
- Testdaten: Grundlage für Interoperabilitätstests

Die Beispiele stellen aus technischer Sicht vollständige Ressourcen dar und decken typische Anwendungsfälle im Bereich der Kardiologie ab.

## A. Diagnosen

- **MII_EXA_Kardio_Diagnose_Embolischer_Gefaessverschluss** — Embolischer Gefäßverschluss (Condition)
- **MII_EXA_Kardio_Myokardinfarkt** — Myokardinfarkt (Condition)

## B. Device-Implantationen

- **MII_EXA_Kardio_Diagnose_Myokardinfarkt** — Myokardinfarkt
- **MII_EXA_Kardio_Device_ICD** — ICD-Implantation (Device + Procedure)
- **MII_EXA_Kardio_Kardiale_Deviceimplantation_ICD** — ICD-Implantation (Procedure)
- **MII_EXA_Kardio_Kein_Device** — Ausschluss device-Implantation

## C. Geräteprogrammierung

- **MII_EXA_Kardio_Geräteprogrammierung_VVI** — VVI-Modus Programierung

## D. LVEF (linksventrikuläre Ejektionsfraktion)

- **MII_EXA_Kardio_LVEF** — LVEF-Observation (z.B. 55%)

## E. Scores

- **MII_EXA_Kardio_MRS** — modifizierte Rankin-Skala (mRS)
- **MII_EXA_Kardio_Score_NYHA_II** — NYHA-Klasse II

## F. Rauchverhalten

- **MII_EXA_Kardio_Raucherstatus** — Raucherstatus (Current smoker / Ex-smoker / Never smoker)

## G. Anzahl KH-Aufenthalte wg. Heart Failure

- **MII_EXA_Kardio_Anzahl_KH_Aufenthalte_wg_HF** — Anzahl KH-Aufenthalte
- **MII_EXA_Kardio_Anzahl_KH_Aufenthalte_wg_HF2** — Alternative Darstellung

## H. Atherosklerotische Ereignisse

- **MII_EXA_Kardio_Atherosklerotisches_Erstereignis** — Atherosklerotisches Erstereignis

## I. Questionnaire (ACRIBiS-FollowUp)

- **MII_EXA_Kardio_Questionnaire_Patient** — Patienten-Befragung
- **MII_EXA_Kardio_Questionnaire_Arzt** — Arzt-Befragung
- **MII_EXA_Kardio_Questionnaire_Angehoerige** — Angehörigen-Befragung
- **MII_EXA_Kardio_Questionnaire_Andere** — Andere ausfüllende Person
- **MII_EXA_Kardio_Rolle_Kardiologe** — Kardiologen-Rolle

## J. Kardiale Deviceimplantation

Ein Anwendungsbeispiel ist die Erfassung einer **kardialen Deviceimplantation** (z.B. ICD, CRT, LVAD):

1. **Device** — Das implantierte Gerät (Typ, Seriennummer, Hersteller)
2. **Procedure** — Die Implantationsprozedur mit SNOMED- und OPS-Codes
3. **BodySite** — Implantationsstelle (Herz, linker/rechter Ventrikel)
4. **DeviceMetric** (optional) — Geräteprogrammierung (z.B. VVI-Modus)

Siehe Beispielinstanz (`MII_EXA_Kardio_Kardiale_Deviceimplantation_ICD`).

## K. EKG-Gerät

- **MII_EXA_Kardio_EKG_Referenz** — EKG-Referenz mit Rasterung und Kalibrierung
- **MII_EXA_Kardio_EKG_Geraetedefinition_Mortara** — Mortara-EKG-Geräte-Definition

## L. EKG-Messung

- **MII_EXA_Kardio_EKG_Durchführung** — Vollständige EKG-Durchführung mit mehreren Kanälen (I, II, III)
- **MII_EXA_Kardio_EKG_Kanal_I/II/III** — Einzelne EKG-Kanal-Beispiele

---

**Hinweis:** Weitere Beispiele finden sich in `input/fsh/instances/`. Jede Instanz hat einen `Usage: #example` Annotation und kann über die IG-Artefakt-Liste eingesehen werden.
