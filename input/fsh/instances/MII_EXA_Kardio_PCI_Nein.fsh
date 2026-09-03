Instance: mii-exa-kardio-pci-nein
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio PCI/Stent Nein"
Description: "Beispiel: Der Patient hatte noch keine Koronarintervention mit PCI/Stent."
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* category = $observation-category-with-version#survey
* code.text = "Koronarintervention mit PCI/Stent"
* code = $sct-with-version#415070008 "Percutaneous coronary intervention"
* performer.display = "Beispielkardiologe"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532-with-version#N "Nein"
* method =  $sct-with-version#129431000 "History taking - action"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"