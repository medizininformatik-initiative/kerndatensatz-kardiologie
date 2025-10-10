Instance: mii-exa-kardio-herzinsuffizienz-unbekannt
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio Herzinsuffizienz Unbekannt"
Description: "Beispiel: Der Patient weiß nicht, ob er Herzinsuffizienz hat."
Usage: #example

* status = #final
* category = $observation-category#survey
* code.coding[diagnoseSnomed] = $sct#84114007 "Heart failure (disorder)"
* performer.display = "Beispielkardiologe"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532#ASKU "asked but unknown"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"