Instance: mii-exa-kardio-kein-device
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Kein Device"
Description: "Beispiel: Der Patient hat kein implantiertes kardiales Device."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* category = $observation-category-with-version#survey
* code.coding[diagnoseSnomed] = $sct-with-version#703398004 "Cardiac implant in situ"
* performer.display = "Beispielkardiologe"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-11-13T18:06:34.214+01:00"
* valueCodeableConcept = $v2-0532-with-version#N "Nein"
* method =  $sct-with-version#129431000 "History taking - action"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"