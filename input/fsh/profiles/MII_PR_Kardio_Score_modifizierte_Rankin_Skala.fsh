Profile: MII_PR_Kardio_Score_modifizierte_Rankin_Skala
Id: mii-pr-kardio-score-modifizierte-rankin-skala
Parent: Observation //sd-mii-icu-score
Title: "MII_PR_Kardio_Score_modifizierte_Rankin_Skala"
Description: "Profil zur Erfassung des Outcomes eines Schlaganfalls mittels modifizierter Rankin-Skala."

* code 1..1 MS
* code.coding 1..1 MS
* code.coding.system = $sct
* code.coding.code = $sct#1255866005 (exactly) // 1255866005 = "Modified Rankin Scale score (observable entity)"
//* code.coding.display = "Modified Rankin Scale score (observable entity)"

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from $mRS (required)

* bodySite 0..0

// Published: 1988, Van Swieten JC; Koudstaal PJ; Visser MC; Schouten HJA; Van Gijn J, 
// Online: see https://pubmed.ncbi.nlm.nih.gov/3363593/
// Lizenzbedingungen: Public Domain --> https://eprovide.mapi-trust.org/instruments/modified-rankin-scale