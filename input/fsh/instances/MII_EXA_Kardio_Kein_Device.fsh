Instance: mii-exa-kardio-kein-device
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Kein Device"
Description: "Beispiel: Der Patient hat kein implantiertes kardiales Device."
Usage: #example

* status = #final
* category = $observation-category#survey
* code.coding[diagnoseSnomed] = $sct#703398004 "Cardiac implant in situ (finding)"
* performer.display = "Beispielkardiologe"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-11-13T18:06:34.214+01:00"
* valueCodeableConcept = $v2-0532#N "No"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"