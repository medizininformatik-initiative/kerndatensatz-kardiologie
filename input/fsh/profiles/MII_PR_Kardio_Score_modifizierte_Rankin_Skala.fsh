Profile: MII_PR_Kardio_Score_Modifizierte_Rankin_Skala
Id: mii-pr-kardio-score-modifizierte-rankin-skala
Parent: Observation //sd-mii-icu-score
Title: "MII PR Kardio Score Modifizierte Rankin Skala"
Description: "Profil zur Erfassung des Outcomes eines Schlaganfalls mittels modifizierter Rankin-Skala."
* insert PR_CS_VS_Version
* insert Publisher
* category 1..1 MS
* category from $observation-category-vs (required)
* category = $observation-category#survey
* ^status = #active

* code 1..1 MS
* code.coding 2..*
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #closed
* code.coding contains 
    sct 1..1 MS and
    loinc 1..1 MS
* code.coding[sct] = $sct#1255866005 // Modified Rankin Scale score (observable entity)
* code.coding[loinc] = $loinc#75859-9 // Modified rankin scale

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Kardio_Modifizierte_Rankin_Skala (extensible) //(required)
* performer MS
* encounter MS

// Published: 1988, Van Swieten JC; Koudstaal PJ; Visser MC; Schouten HJA; Van Gijn J, 
// Online: see https://pubmed.ncbi.nlm.nih.gov/3363593/
// Lizenzbedingungen: Public Domain --> https://eprovide.mapi-trust.org/instruments/modified-rankin-scale