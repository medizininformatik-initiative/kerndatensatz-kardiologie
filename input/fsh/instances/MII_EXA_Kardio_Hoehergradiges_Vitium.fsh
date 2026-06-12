Instance: mii-exa-kardio-hoehergradiges-vitium
InstanceOf: MII_PR_Kardio_Klappenvitium
Title: "MII EXA Kardio Höhergradiges Vitium"
Description: "Beispiel zur Abbildung eines unbestimmten höhergradigen Klappenvitiums."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* clinicalStatus = $example-condition-clinical#active "Active"
* verificationStatus = $example-condition-ver-status#confirmed "Confirmed"
* severity.coding = $example-sct#423343006 "Grade 3 out of 3"

* code.coding[sct] = $example-sct#368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "368009|Heart valve disorder|:{116676008|Associated morphology|=49755003|Abnormal tissue appearance|,363698007|Finding site|=17401000|Cardiac valve|},{246112005|Severity|=24484000|Severe|}"
* code.text = "Vitium primärer Genese"

* bodySite.coding[snomed-ct] = $example-sct#17401000 "Cardiac valve"
* subject = Reference(Beispielpatient)
* recorder.display = "Facharzt für Kardiologie"
* asserter.display = "Facharzt für Kardiologie"
* recordedDate = "2025-05-13"