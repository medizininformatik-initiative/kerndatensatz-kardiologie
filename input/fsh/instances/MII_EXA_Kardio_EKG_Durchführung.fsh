Instance: mii-exa-kardio-ekg-durchfuehrung
InstanceOf: MII_PR_Kardio_EKG_Durchfuehrung
Title: "MII EXA Kardio EKG Durchführung"
Description: "Beispiel einer Durchführung eines 12-Kanal Ruhe-EKGs"
Usage: #example

* extension[http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum].valueDateTime = "2025-01-10T16:23:12+02:00"
* extension[https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* status = #completed
* category.coding[sct] = $sct#165197003 "Diagnostic assessment"
* code.coding[sct] = $sct#447113005 "12 lead electrocardiogram at rest"
* subject.display = "Beispielpatient"
* performedPeriod.start = "2023-05-03T07:38:07Z"
* performedPeriod.end = "2023-05-03T07:38:17Z"
* bodySite = $sct#80891009 "Heart structure"
* note.text = "ICD Kontrolle"
* usedReference = Reference(mii-exa-kardio-ekg-geraet-mortara)