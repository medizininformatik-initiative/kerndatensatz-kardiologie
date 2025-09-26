Instance: mii-exa-kardio-hoehergradiges-vitium-unbekannt
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Höhergradiges Vitium Unbekannt"
Description: "Beispiel um abzubilden, dass das Vorliegen eines höhergradigen Klappenvitiums unbekannt ist."
Usage: #example

* contained[0] = Beispielpatient
* status = #final
* category = $observation-category#survey "Survey"

* code.coding = $sct-20250701#368009:{116676008=49755003,363698007=17401000},{246112005=24484000} "Heart valve disorder:{Associated morphology=Morphologically abnormal structure,Finding site=Cardiac valve structure},{Severity=Severe}"
* code.text = "Höhergradiges Vitium primärer Genese"

* bodySite = $sct#17401000 "Cardiac valve structure (body structure)"
* subject = Reference(Beispielpatient)
* performer.display = "Facharzt für Kardiologie"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532#N "No"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"