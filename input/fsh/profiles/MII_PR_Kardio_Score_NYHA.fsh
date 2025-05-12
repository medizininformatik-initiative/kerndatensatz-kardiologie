Profile: MII_PR_Kardio_Score_NYHA
Id: mii-pr-kardio-score-nyha
Parent: Observation // sd-mii-icu-score
Title: "MII PR Kardio Score NYHA"
Description: "Profil zur Erfassung der Einstufung der Stadien einer Herzinsuffizienz nach der New York Heart Association."

// Score als Observation, Codes in Value[x]
// See https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/Demographics/Frailtyscore.guide.md?version=current

* code 1..1 MS
* code.coding 1..1 MS
* code.coding.system = $sct
* code.coding.code = $sct#420816009 (exactly) // 420816009 = "New York Heart Association Classification (assessment scale)"
* code.coding.display = "New York Heart Association Classification (assessment scale)"

// Pateintenbzug MS
* subject 1..1 MS
* subject only Reference(Patient)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from $nyha-class-vs (required)

* bodySite 0..0

// License: Credit appropietly to New York Heart Association
// Online: see https://manual.jointcommission.org/releases/TJC2025B/DataElem0439.html