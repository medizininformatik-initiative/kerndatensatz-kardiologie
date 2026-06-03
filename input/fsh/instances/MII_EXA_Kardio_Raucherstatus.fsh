Instance: mii-exa-kardio-raucherstatus
InstanceOf: MII_PR_Kardio_Observation_Rauchen
Title: "MII EXA Kardio Raucherstatus"
Description: "Eine Beispielinstanz zur Darstellung des Rauchverhaltens einer Person gemäß dem Profil MII_PR_Kardio_Observation_Rauchen."
Usage: #example

* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* status = #final
* category = $example-observation-category#social-history "Social History"
* code = $example-loinc#72166-2 "Tobacco smoking status"
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
* component[packungsjahre].valueQuantity.comparator = #= 
* component[packungenProTag].code = $example-sct#230056004 // Cigarette consumption (observable entity)
* component[packungenProTag].valueQuantity.value = 1
* component[packungenProTag].valueQuantity.unit = "{packs-per-day}"
* component[packungenProTag].valueQuantity.system = $ucum
* component[packungenProTag].valueQuantity.code = $ucum#{packs-per-day}
//* component[rauchzeitraum].code = $sct#266918002 // Cigarette consumption (observable entity)
//* component[rauchzeitraum].valuePeriod.start = "1999"
//* component[rauchzeitraum].valuePeriod.end = "2035"
* component[rauchbeginn].code = $example-sct#228488005
* component[rauchbeginn].valueQuantity.value = 19
* component[rauchbeginn].valueQuantity.unit = "year"
* component[rauchbeginn].valueQuantity.system = $ucum
* component[rauchbeginn].valueQuantity.code = #a
* component[rauchdauer].code = $example-sct#228487000
* component[rauchdauer].valueQuantity.value = 35.5
* component[rauchdauer].valueQuantity.unit = "year"
* component[rauchdauer].valueQuantity.system = $ucum
* component[rauchdauer].valueQuantity.code = #a
* component[rauchdauer].valueQuantity.comparator = #<=