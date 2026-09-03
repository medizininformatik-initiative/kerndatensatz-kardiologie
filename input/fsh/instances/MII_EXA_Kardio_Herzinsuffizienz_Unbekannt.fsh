Instance: mii-exa-kardio-herzinsuffizienz-unbekannt
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Herzinsuffizienz Unbekannt"
Description: "Beispiel: Der Patient weiß nicht, ob er Herzinsuffizienz hat."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* category = $observation-category-with-version#survey
* code.coding[diagnoseSnomed] = $sct-with-version#84114007 "Heart failure"
* performer.display = "Beispielkardiologe"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532-with-version#ASKU "gefragt, aber nicht genannt"
* method =  $sct-with-version#129431000 "History taking - action"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"