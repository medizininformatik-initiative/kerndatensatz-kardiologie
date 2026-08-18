# CapabilityStatement

> **Hinweis — Status:** Dieses CapabilityStatement befindet sich in Bearbeitung (Umsetzungsstufe 1, alpha) und ist **noch nicht final mit dem Deutschen Forschungsdatenportal für Gesundheit (FDPG) abgestimmt**. Inhalte können sich bis zur Ballotierung/Freigabe ändern.

Um eine dezentrale Datenauswertung mittels des Deutschen Forschungsdatenportals für Gesundheit der Medizininformatik-Initiative zu ermöglichen, MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter `[BASE-URL]/metadata` ein CapabilityStatement exponiert wird.

Das hier beschriebene CapabilityStatement entspricht dem artefaktbasierten FSH-Modell `mii-cps-kardio-capabilitystatement`. Konformität wird über `CapabilityStatement.instantiates` in den Implementationen des Moduls nachgewiesen.

**Canonical:** [CapabilityStatement/metadata](https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/CapabilityStatement/metadata)

## REST Capabilities Server

Mode: Server

| Resource Type | Supported Profiles | Read | SearchType |
|---|---|---|---|
| Condition | [mii-pr-kardio-diagnose](StructureDefinition-mii-pr-kardio-diagnose.html), [mii-pr-kardio-klappenvitium](StructureDefinition-mii-pr-kardio-klappenvitium.html) | SHALL | SHALL |
| Observation | [mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf](StructureDefinition-mii-pr-kardio-anzahl-kh-aufenthalte-wg-hf.html), [mii-pr-kardio-atherosklerotisches-erstereignis](StructureDefinition-mii-pr-kardio-atherosklerotisches-erstereignis.html), [mii-pr-kardio-diagnose-prozedur-nein-unbekannt](StructureDefinition-mii-pr-kardio-diagnose-prozedur-nein-unbekannt.html), [mii-pr-kardio-ekg-annotation](StructureDefinition-mii-pr-kardio-ekg-annotation.html), [mii-pr-kardio-geraeteprogrammierung](StructureDefinition-mii-pr-kardio-geraeteprogrammierung.html), [mii-pr-kardio-linksventrikulaere-ejektionsfraktion](StructureDefinition-mii-pr-kardio-linksventrikulaere-ejektionsfraktion.html), [mii-pr-kardio-observation-rauchen](StructureDefinition-mii-pr-kardio-observation-rauchen.html), [mii-pr-kardio-score-modifizierte-rankin-skala](StructureDefinition-mii-pr-kardio-score-modifizierte-rankin-skala.html), [mii-pr-kardio-score-nyha](StructureDefinition-mii-pr-kardio-score-nyha.html) | SHALL | SHALL |
| Procedure | [mii-pr-kardio-ekg-durchfuehrung](StructureDefinition-mii-pr-kardio-ekg-durchfuehrung.html), [mii-pr-kardio-kardiale-deviceimplantation](StructureDefinition-mii-pr-kardio-kardiale-deviceimplantation.html) | SHALL | SHALL |
| Device | [mii-pr-kardio-device](StructureDefinition-mii-pr-kardio-device.html), [mii-pr-kardio-ekg-geraet](StructureDefinition-mii-pr-kardio-ekg-geraet.html), [mii-pr-kardio-ekg-kanal](StructureDefinition-mii-pr-kardio-ekg-kanal.html) | SHALL | SHALL |
| DeviceMetric | [mii-pr-kardio-nbg-schrittmachermodus](StructureDefinition-mii-pr-kardio-nbg-schrittmachermodus.html) | SHALL | SHALL |
| DeviceDefinition | [mii-pr-kardio-ekg-geraetedefinition](StructureDefinition-mii-pr-kardio-ekg-geraetedefinition.html) | SHALL | SHALL |
| DocumentReference | [mii-pr-kardio-ekg-referenz](StructureDefinition-mii-pr-kardio-ekg-referenz.html) | SHALL | SHALL |

## Search Parameters per resource type

### Condition

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
code | [token](http://hl7.org/fhir/search.html#token) | SHALL
subject | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
encounter | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
onset-date | [date](http://hl7.org/fhir/search.html#date) | SHALL
category | [token](http://hl7.org/fhir/search.html#token) | SHALL
clinical-status | [token](http://hl7.org/fhir/search.html#token) | SHALL
verification-status | [token](http://hl7.org/fhir/search.html#token) | SHALL

### Observation

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
code | [token](http://hl7.org/fhir/search.html#token) | SHALL
patient | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
subject | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
date | [date](http://hl7.org/fhir/search.html#date) | SHALL
category | [token](http://hl7.org/fhir/search.html#token) | SHALL
status | [token](http://hl7.org/fhir/search.html#token) | SHALL
component-code | [token](http://hl7.org/fhir/search.html#token) | SHALL
has-member | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
value-quantity | [quantity](http://hl7.org/fhir/search.html#quantity) | SHALL

### Procedure

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
code | [token](http://hl7.org/fhir/search.html#token) | SHALL
subject | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
patient | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
date | [date](http://hl7.org/fhir/search.html#date) | SHALL
status | [token](http://hl7.org/fhir/search.html#token) | SHALL
category | [token](http://hl7.org/fhir/search.html#token) | SHALL

### Device

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
patient | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
type | [token](http://hl7.org/fhir/search.html#token) | SHALL
manufacturer | [string](http://hl7.org/fhir/search.html#string) | SHALL
device-name | [string](http://hl7.org/fhir/search.html#string) | SHALL

### DeviceMetric

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
type | [token](http://hl7.org/fhir/search.html#token) | SHALL
device | [reference](http://hl7.org/fhir/search.html#reference) | SHALL

### DeviceDefinition

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
type | [token](http://hl7.org/fhir/search.html#token) | SHALL
manufacturer | [string](http://hl7.org/fhir/search.html#string) | SHALL

### DocumentReference

Name | Type | Level
--- | --- | ---
_id | [token](http://hl7.org/fhir/search.html#token) | SHALL
_lastUpdated | [date](http://hl7.org/fhir/search.html#date) | SHALL
_profile | [uri](http://hl7.org/fhir/search.html#uri) | SHALL
patient | [reference](http://hl7.org/fhir/search.html#reference) | SHALL
type | [token](http://hl7.org/fhir/search.html#token) | SHALL
date | [date](http://hl7.org/fhir/search.html#date) | SHALL
status | [token](http://hl7.org/fhir/search.html#token) | SHALL