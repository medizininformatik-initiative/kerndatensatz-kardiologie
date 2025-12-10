Instance: mii-exa-kardio-kardiale-deviceimplantation-icd
InstanceOf: MII_PR_Kardio_Kardiale_Deviceimplantation
Title: "MII EXA Kardio Kardiale Deviceimplantation ICD"
Description: "Beispiel einer Implantation eines Kardioverter-Defibrillators (ICD)"
Usage: #example

* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2025-05-16T16:23:12+02:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic intent"
* status = #completed
* category.coding[sct] = $sct#387713003 "Surgical procedure"
* code.coding[sct] = $sct#395218007 "Implantation of internal cardiac defibrillator"
* subject.display = "Beispielpatient"
* performedDateTime = "2020-04"
* bodySite = $sct#80891009 "Heart structure"
* note.text = "Implantation eines ICDs im April 2020"
* focalDevice.action = $sct#129338005 "Surgical implantation - action"
* focalDevice.manipulated.reference = "Device/mii-exa-kardio-device-icd"