Instance: mii-exa-kardio-raucherstatus
InstanceOf: MII_PR_Kardio_Observation_Rauchen
Title: "MII EXA Kardio Raucherstatus"
Description: "Eine Beispielinstanz zur Darstellung des Rauchverhaltens einer Person gemäß dem Profil MII_PR_Kardio_Observation_Rauchen."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[loinc] = $example-loinc#72166-2 "Raucherstatus"
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2023-12-01"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept = $example-loinc#LA18976-3 "Current every day smoker"
// Komponenten zur weiterführenden Beschreibung des Rauchverhaltens
* component[packungsjahre].code = $example-sct#401201003 "Cigarette pack-years"
* component[packungsjahre].valueQuantity.value = 35.5
* component[packungsjahre].valueQuantity.unit = "{pack-years}"
* component[packungsjahre].valueQuantity.system = $ucum
* component[packungsjahre].valueQuantity.code = $ucum#{pack-years}
* component[zigarettenProTag].code = $example-loinc#63640-7 // Cigarette consumption (observable entity)
* component[zigarettenProTag].valueQuantity.value = 1
* component[zigarettenProTag].valueQuantity.unit = "{cigarettes-per-day}"
* component[zigarettenProTag].valueQuantity.system = $ucum
* component[zigarettenProTag].valueQuantity.code = $ucum#{cigarettes-per-day}
//* component[rauchzeitraum].code = $sct#266918002 // Cigarette consumption (observable entity)
//* component[rauchzeitraum].valuePeriod.start = "1999"
//* component[rauchzeitraum].valuePeriod.end = "2035"
* component[rauchbeginn][0].code = $example-sct#266929003
* component[rauchbeginn][0].valueDateTime = "2025-01-31"
* component[rauchbeginn][1].code = $example-sct#266929003
* component[rauchbeginn][1].valueQuantity.value = 19
* component[rauchbeginn][1].valueQuantity.unit = "year"
* component[rauchbeginn][1].valueQuantity.system = $ucum
* component[rauchbeginn][1].valueQuantity.code = #a
* component[rauchdauer].code = $example-sct#228487000
* component[rauchdauer].valueQuantity.value = 35.5
* component[rauchdauer].valueQuantity.unit = "year"
* component[rauchdauer].valueQuantity.system = $ucum
* component[rauchdauer].valueQuantity.code = #a
* component[rauchdauer].valueQuantity.comparator = #<=