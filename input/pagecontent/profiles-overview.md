# FHIR-Profile (Übersicht)

Übersicht über die 19 Profile des Kardiologie-Moduls, gruppiert nach den **sieben offiziellen Datenkategorien der IOP-PDF** (Umsetzungsstufe 1, ACRIBiS-Fokus). Klicken Sie auf eine Kategorie für die detaillierte narrative Beschreibung jedes Profils.

## Kategorien

| Kategorie (IOP-PDF) | Anzahl Profile | Profile |
|---|---|---|
| [Anamnese](profiles-anamnese.html) | 5 | Diagnose, Diagnose/Prozedur (Nein/Unbekannt), Atherosklerotisches Erstereignis, Anzahl KH-Aufenthalte wg. HF, Klappenvitium |
| [KardioDevices](profiles-kardiodevices.html) | 4 | Kardiale Device-Implantation, Device, Geräteprogrammierung, NBG-Schrittmachermodus |
| [Skalen](profiles-skalen.html) | 2 | NYHA-Score, mod. Rankin-Skala (mRS) |
| [Weitere Risikofaktoren](profiles-risikofaktoren.html) | 1 | Observation Rauchen |
| [Diagnostik](profiles-diagnostik.html) | 1 | LVEF (Linksventrikuläre Ejektionsfraktion) |
| [EKG-Metadaten](profiles-ekg.html) | 6 | EKG-Durchführung, EKG-Kanal, EKG-Referenz, EKG-Gerät, EKG-Gerätedefinition, EKG-Annotation |

> **Allgemeine Patientendaten** haben keine Profile im Modul Kardiologie (werden über Basis-/Soziodemographie-Module abgedeckt).

## Profilliste via Liquid-Syntax / jekyll-Shortcodes

{% include list-simple-profiles.xhtml %}

{% include StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation-html-en.xhtml %}

{% json fsh-generated/resources/StructureDefinition-mii-pr-kardio-observation-rauchen.json %}

{% include StructureDefinition-mii-pr-kardio-observation-rauchen-json-html-en.xhtml %}

{% sql {
  "query" : "select name as Name, Description, Web from Resources",
  "class" : "lines",
  "columns" : [
    { "name" : "Name", "type" : "link", "source" : "Name", "target" : "Web"},
    { "name" : "Description", "type" : "markdown", "source" : "Description"}
  ]
} %}

## Direktliste der Profile (manuell gepflegt)

| Profil | Resource | Kategorie | Kurzbeschreibung |
|---|---|---|---|
| [MII_PR_Kardio_Diagnose](StructureDefinition-mii-pr-kardio-diagnose.html) | Condition | Anamnese | Kardiovaskuläre Diagnosen (Myokardinfarkt, Embolie, etc.) |
| [MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html) | Condition | Anamnese | Ausschluss oder Unbekanntheit von Diagnosen/Prozeduren |
| [MII_PR_Kardio_Atherosklerotisches_Erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html) | Condition | Anamnese | Erfassung des ersten atherosklerotischen Ereignisses |
| [MII_PR_Kardio_Anzahl_KH_Aufenthalte_wg_HF](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html) | Observation | Anamnese | Anzahl KH-Aufenthalte wegen Herzinsuffizienz |
| [MII_PR_Kardio_Klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.html) | Condition | Anamnese | Erfassung von Klappenerkrankungen |
| [MII_PR_Kardio_Kardiale_Deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.html) | Procedure | KardioDevices | Implantation von Schrittmacher, ICD, CRT, LVAD/BiVAD |
| [MII_PR_Kardio_Device](StructureDefinition-mii-pr-kardio-device.html) | Device | KardioDevices | Allgemeines Device-Profil |
| [MII_PR_Kardio_Geraeteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.html) | DeviceMetric | KardioDevices | Geräteprogrammierung (z.B. VVI-Modus) |
| [MII_PR_Kardio_NBG_Schrittmachermodus](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.html) | Observation | KardioDevices | NBG-Schrittmachermodus-Codierung |
| [MII_PR_Kardio_Score_NYHA](StructureDefinition-mii-pr-kardio-score-nyha.html) | Observation | Skalen | NYHA-Score (New York Heart Association) |
| [MII_PR_Kardio_Score_modifizierte_Rankin_Skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.html) | Observation | Skalen | modifizierte Rankin-Skala (mRS) |
| [MII_PR_Kardio_Observation_Rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.html) | Observation | Weitere Risikofaktoren | Erfassung des Rauchverhaltens |
| [MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.html) | Observation | Diagnostik | Linksventrikuläre Ejektionsfraktion (LVEF) |
| [MII_PR_Kardio_EKG_Durchführung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.html) | Procedure | EKG-Metadaten | Durchführung eines EKGs |
| [MII_PR_Kardio_EKG_Kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.html) | Observation | EKG-Metadaten | Spezifische Kanal-Beschreibung (I, II, III, etc.) |
| [MII_PR_Kardio_EKG_Referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.html) | Observation | EKG-Metadaten | Referenz für EKG-Rasterung und -Kalibrierung |
| [MII_PR_Kardio_EKG_Geraet](StructureDefinition-mii-pr-kardio-ekg-geraet.html) | Device | EKG-Metadaten | Erfassung des verwendeten Geräts (z.B. Mortara) |
| [MII_PR_Kardio_EKG_Geraetedefinition](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.html) | DeviceDefinition | EKG-Metadaten | Gerätespezifische Information |
| [MII_PR_Kardio_EKG_Annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.html) | Observation | EKG-Metadaten | Annotationen des EKG (z.B. Rhythmus, Blockaden) |

---

## Anmerkungen

* **Status:** Alle Profile sind aktuell auf "Active" oder "Draft" gesetzt. Draft-Profile sind noch nicht ballotiert.
* **Links:** Die Links verweisen auf die auto-generierten Profilseiten der IG (via `StructureDefinition-<id>.html`).
* **FSH-Dateien:** Die vollständigen Profildefinitionen finden sich in `input/fsh/profiles/`.
* **Beispiele:** Für jedes Profil gibt es zugehörige Beispiele in `input/fsh/instances/`.
