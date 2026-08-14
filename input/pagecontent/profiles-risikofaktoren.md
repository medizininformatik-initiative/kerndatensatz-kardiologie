# Profile: Weitere Risikofaktoren

## Übersicht

| Profil | Resource | Kurzbeschreibung |
|---|---|---|
| [Observation Rauchen](#observation-rauchen) | Observation | Erfassung des Rauchverhaltens (Raucherstatus, Rauchmenge, Rauchbeginn) |

---

## Observation Rauchen

**Profil:** [MII_PR_Kardio_Observation_Rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.html) · **Resource:** Observation · **Id:** mii-pr-kardio-observation-rauchen

### Beschreibung
Profil zur Erfassung des Rauchverhaltens einer Person im Kontext des Moduls Kardiologie.

### Kern-Elemente
* `code` — Observation Code für Rauchverhalten
* `valueCodeableConcept` — Raucherstatus (Raucher, Nichtraucher, Ex-Raucher, etc.)
* `effective[x]` — Datum der Erhebung
* `subject` — Reference(Patient)

### Wertebereiche
* **Raucherstatus:** ISiK-Raucherstatus (gematik), IPS-ValueSet
* **V2-0532:** Codes für Ja/Nein/Unbekannt

### Erweiterung von ISiK
Das Profil erweitert das bestehende ISiK-Profil (ISiK-Raucherstatus, basierend auf ISiK-Lebenszustand) um kardiologisch relevante Details:
* Rauchbeginn
* Rauchdauer
* Zigaretten pro Tag
* Packungsjahre

### Mapping
* **ISiK:** ISiK-Raucherstatus
* **SNOMED CT:** 266919005 (History of tobacco use), 77176002 (Current smoker)

### Beispiele
* MII_EXA_Kardio_Raucherstatus

### Verwandte Profile
* Atherosklerotisches Erstereignis (Rauchen ist Risikofaktor)
* Weitere Risikofaktoren (Alkoholkonsum, familiäre Disposition)
