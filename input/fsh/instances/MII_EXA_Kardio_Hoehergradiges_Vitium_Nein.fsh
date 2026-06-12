Instance: mii-exa-kardio-hoehergradiges-vitium-nein
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Höhergradiges Vitium Nein"
Description: "Beispiel um abzubilden, dass kein höhergradiges Klappenvitium vorliegt."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* category = $example-observation-category#survey "Survey"

* code.coding[diagnoseSnomed] = $example-sct#368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Abnormal tissue appearance|,363698007|Finding site|=17401000|Cardiac valve|},{246112005|Severity|=24484000|Severe|}"
* code.text = "Höhergradiges Vitium primärer Genese"

* bodySite = $example-sct#17401000 "Cardiac valve"
* subject = Reference(Beispielpatient)
* performer.display = "Facharzt für Kardiologie"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $example-v2-0532#N "Nein"
* method =  $example-sct#129431000 "History taking - action"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"