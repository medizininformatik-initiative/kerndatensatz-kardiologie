Instance: mii-exa-kardio-lvef
InstanceOf: MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion
Title: "MII EXA Kardio LVEF"
Description: "Beispielhafte Observation einer linksventrikulären Ejektionsfraktion mittels Echokardiographie"
Usage: #example

* identifier.system = "http://hospital.example.org/observation-lvef"
* identifier.value = "lvef-123456"

* basedOn.display = "Echokardiographie: Beispielanforderung"
* partOf.display = "Echokardiographie: Beispieluntersuchung"

* status = #final

* category[vs-cat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[vs-cat].coding.code = #imaging
* category[vs-cat].coding.display = "Imaging"

* code.coding[sct].system = "http://snomed.info/sct"
* code.coding[sct].code = #250908004
* code.coding[sct].display = "Left ventricular ejection fraction (observable entity)"
* code.coding[loinc].system = "http://loinc.org"
* code.coding[loinc].code = #10230-1
* code.coding[loinc].display = "Left ventricular ejection fraction"
* code.text = "Linksventrikuläre Ejektionsfraktion"

* subject.display = "Beispielpatient"
* encounter.display = "Beispielfall"
* effectiveDateTime = "2025-05-12T10:15:00+01:00"

* performer[0].display = "Beispielarzt"

* valueQuantity.value = 55
* valueQuantity.unit = "percent"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation[0].coding[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

* bodySite.coding[0] = $sct#87878005 "Left cardiac ventricular structure (body structure)"
* bodySite.text = "Linker Ventrikel"

* method.coding[0] = $sct#40701008 "Echocardiography"
* method.text = "Echokardiographie"

* device.display = "Philips EPIQ CVx Ultrasound System"

* referenceRange[normal].text = "Normal"
* referenceRange[normal].low.value = 50
* referenceRange[normal].low.unit = "%"
* referenceRange[normal].low.system = "http://unitsofmeasure.org"
* referenceRange[normal].low.code = #%

* referenceRange[mild].text = "Mildly reduced"
* referenceRange[mild].low.value = 41
* referenceRange[mild].low.unit = "%"
* referenceRange[mild].low.system = "http://unitsofmeasure.org"
* referenceRange[mild].low.code = #%
* referenceRange[mild].high.value = 49
* referenceRange[mild].high.unit = "%"
* referenceRange[mild].high.system = "http://unitsofmeasure.org"
* referenceRange[mild].high.code = #%

* referenceRange[reduced].text = "Reduced"
* referenceRange[reduced].high.value = 40
* referenceRange[reduced].high.unit = "%"
* referenceRange[reduced].high.system = "http://unitsofmeasure.org"
* referenceRange[reduced].high.code = #%