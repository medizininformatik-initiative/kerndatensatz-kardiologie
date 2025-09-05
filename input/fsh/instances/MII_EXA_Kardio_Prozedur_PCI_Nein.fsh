Instance: mii-exa-kardio-pci-nein
InstanceOf: MII_PR_Kardio_Diagnose_Prozedur_Nein_Unbekannt
Title: "MII EXA Kardio PCI/Stent Nein"
Description: "Beispiel: Der Patient hatte noch keine Koronarintervention mit PCI/Stent."
Usage: #example

* status = #final
* category = $observation-category#survey
* code.text = "Koronarintervention mit PCI/Stent"
* code = $sct#415070008 "Percutaneous coronary intervention"
* performer.display = "Beispielkardiologe"
* subject.display = "Beispielpatient"
* effectiveDateTime = "2025-06-06T14:29:34.214+02:00"
* valueCodeableConcept = $v2-0532#N "No"
* method =  $sct#129431000 "History taking - action (qualifier value)"
* device.display = "Beispieltablet"
* derivedFrom.display = "Beispielfragebogen"