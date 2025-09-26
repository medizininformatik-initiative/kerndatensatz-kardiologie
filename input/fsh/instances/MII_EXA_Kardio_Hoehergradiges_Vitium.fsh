Instance: mii-exa-kardio-hoehergradiges-vitium
InstanceOf: MII_PR_Kardio_Klappenvitium
Title: "MII EXA Kardio Höhergradiges Vitium"
Description: "Beispiel zur Abbildung eines unbestimmten höhergradigen Klappenvitiums."
Usage: #example

* contained[0] = Beispielpatient
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* severity.coding = $sct#423343006 "Grade 3 on a scale of 1 to 3"

* code.coding[sct] = $sct-20250701#368009:{116676008=49755003,363698007=17401000} "Heart valve disorder:{Associated morphology=Morphologically abnormal structure,Finding site=Cardiac valve structure}"
* code.text = "Vitium primärer Genese"

* bodySite.coding[snomed-ct] = $sct#17401000 "Cardiac valve structure (body structure)"
* subject = Reference(Beispielpatient)
* recorder.display = "Facharzt für Kardiologie"
* asserter.display = "Facharzt für Kardiologie"
* recordedDate = "2025-05-13"