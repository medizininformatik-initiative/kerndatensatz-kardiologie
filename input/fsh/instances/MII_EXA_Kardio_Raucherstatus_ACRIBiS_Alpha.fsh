Instance: mii-exa-kardio-raucherstatus-acribisalpha
InstanceOf: MII_PR_Kardio_Observation_Rauchen_AcribisAlpha
Title: "MII EXA Kardio Raucherstatus ACRIBiS Alpha"
Description: "Eine Beispielinstanz zur Darstellung des Rauchverhaltens einer Person gemäß dem Profil MII_PR_Kardio_Observation_Rauchen im Kontext von ACRIBiS."
Usage: #example

* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* status = #final
* category = $observation-category#social-history "Social History"
* code = http://loinc.org#72166-2 "Tobacco smoking status"
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2023-12-01"
* performer.display = "Beispielkardiologe"
* valueCodeableConcept = $sct#77176002 "Smoker (finding)"
// Komponenten zur weiterführenden Beschreibung des Rauchverhaltens
* component[packungsjahre].code = $smoking-units#pack-years
* component[packungsjahre].valueQuantity.value = 35
* component[packungsjahre].valueQuantity.unit = "Packungsjahre"
* component[packungsjahre].valueQuantity.system = $smoking-units
* component[packungsjahre].valueQuantity.code = #pack-years
* component[packungsjahre].valueQuantity.comparator = #> 
* component[packungenProTag].code = $smoking-units#packs-per-day
* component[packungenProTag].valueQuantity.value = 1
* component[packungenProTag].valueQuantity.unit = "Packungen pro Tag"
* component[packungenProTag].valueQuantity.system = $smoking-units
* component[packungenProTag].valueQuantity.code = #packs-per-day
* component[zigarettenProTag].code = $smoking-units#cigarettes-per-day
* component[zigarettenProTag].valueInteger = 20
* component[rauchbeginn].code = $smoking-units#rauchbeginn
* component[rauchbeginn].valueDateTime = "1990" // fuzzy date erlaubt
* component[rauchdauer].code = $smoking-units#rauchdauer
* component[rauchdauer].valueQuantity.value = 35
* component[rauchdauer].valueQuantity.unit = "year"
* component[rauchdauer].valueQuantity.system = $ucum
* component[rauchdauer].valueQuantity.code = #a
* component[rauchdauer].valueQuantity.comparator = #>=