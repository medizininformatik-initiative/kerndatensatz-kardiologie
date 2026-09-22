Instance: mii-exa-kardio-lvef
InstanceOf: MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion
Title: "MII EXA Kardio LVEF"
Description: "Beispielhafte Observation einer linksventrikulären Ejektionsfraktion mittels Echokardiographie"
Usage: #example

* language = #de
* contained[0] = Beispielpatient
* contained[1] = Beispielfall
* identifier.system = "http://hospital.demo.org/observation-lvef"
* identifier.value = "lvef-123456"

* basedOn.display = "Echokardiographie: Beispielanforderung"
* partOf.display = "Echokardiographie: Beispieluntersuchung"

* status = #final

* category[vs-cat].coding = $observation-category-with-version#imaging "Imaging"

* code.coding[sct] = $sct-with-version#250908004 "Left ventricular ejection fraction"
* code.coding[loinc] = $loinc-with-version#10230-1 "Left ventricular ejection fraction"
* code.text = "Linksventrikuläre Ejektionsfraktion"

* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2025-05-12T10:15:00+01:00"

* performer[0].display = "Beispielarzt"

* valueQuantity.value = 55
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation[0].coding[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

* bodySite.coding[0] = $sct-with-version#87878005 "Left cardiac ventricular structure"
* bodySite.text = "Linker Ventrikel"

* method.coding[0] = $sct-with-version#40701008 "Echocardiography"
* method.text = "Echokardiographie"

* device.display = "Philips EPIQ CVx Ultrasound System"

* referenceRange[normal].text = "Normal"
* referenceRange[normal].low = 50 '%' "%"

* referenceRange[reduced].text = "Reduced"
* referenceRange[reduced].high = 49 '%' "%"