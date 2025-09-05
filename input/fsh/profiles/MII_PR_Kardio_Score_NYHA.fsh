Profile: MII_PR_Kardio_Score_NYHA
Id: mii-pr-kardio-score-nyha
Parent: Observation // sd-mii-icu-score
Title: "MII PR Kardio Score NYHA"
Description: "Profil zur Erfassung der Einstufung der Stadien einer Herzinsuffizienz nach der New York Heart Association."

* insert PR_CS_VS_Version
* insert Publisher

// See https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Home/GECCOCore/Demographics/Frailtyscore.guide.md?version=current
* category 1..1 MS
* category from http://hl7.org/fhir/ValueSet/observation-category (required)
* category = $observation-category#survey

* code 1..1 MS
* code.coding 2..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains 
    sct 1..1 MS and
    loinc 1..1 MS
* code.coding[sct] = $sct#762994006 // 420816009 = "New York Heart Association Classification (assessment scale)"
* code.coding[loinc] = $loinc#93124-6 // 420816009 = "New York Heart Association Classification (assessment scale)"

* subject 1..1 MS
* subject only Reference(Patient)

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_NYHA_Klassen_SNOMEDCT (required)

* performer MS
* encounter MS

// License: Credit appropietly to New York Heart Association
// Online: see https://manual.jointcommission.org/releases/TJC2025B/DataElem0439.html