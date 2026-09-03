Instance: mii-exa-kardio-raucherstatus
InstanceOf: MII_PR_Kardio_Observation_Rauchen
Title: "MII EXA Kardio Raucherstatus"
Description: "Eine Beispielinstanz zur Darstellung des Rauchverhaltens einer Person gemäß dem Profil MII_PR_Kardio_Observation_Rauchen."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* status = #final
* category = $observation-category-with-version#social-history "Social History"
* code.coding[loinc] = $loinc-with-version#72166-2 "Raucherstatus"
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2023-12-01"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept = $loinc-with-version#LA18976-3 "Current every day smoker"
// Komponenten zur weiterführenden Beschreibung des Rauchverhaltens
* component[packungsjahre].code = $sct-with-version#401201003 "Cigarette pack-years"
* component[packungsjahre].valueQuantity = 35.5 '{pack-years}' "{pack-years}"
* component[zigarettenProTag].code = $loinc-with-version#63640-7 // Cigarette consumption (observable entity)
* component[zigarettenProTag].valueQuantity = 1 '{cigarettes-per-day}' "{cigarettes-per-day}"
//* component[rauchzeitraum].code = $sct#266918002 // Cigarette consumption (observable entity)
//* component[rauchzeitraum].valuePeriod.start = "1999"
//* component[rauchzeitraum].valuePeriod.end = "2035"
* component[rauchbeginn][0].code = $sct-with-version#266929003
* component[rauchbeginn][0].valueDateTime = "2025-01-31"
* component[rauchbeginn][1].code = $sct-with-version#266929003
* component[rauchbeginn][1].valueQuantity = 19 'a' "year"
* component[rauchdauer].code = $sct-with-version#228487000
* component[rauchdauer].valueQuantity = 35.5 'a' "year"
* component[rauchdauer].valueQuantity.comparator = #<=