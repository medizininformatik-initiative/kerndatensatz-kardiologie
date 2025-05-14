Profile: MII_PR_Kardio_Geraeteprogrammierung
Id: mii-pr-kardio-geraeteprogrammierung
Parent: Observation
Title: "MII PR Kardio Geräteprogrammierung"
Description: "Mit dieser Observation kann die Geräteprogrammierung, d.h. die DeviceMetric \"Brady Pacing Mode\", eines Gerätes zu einem bestimmten Zeitpunkt abgebildet werden."

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^publisher = "Medizininformatik Initative"

* basedOn ..0
* partOf ..0

* code from $devicemetric-type (required)
* code.coding 1..
* code.coding.system 1..
* code.coding.system = $mdc (exactly)
* code.coding.code 1..
* code.coding.code = #730752 (exactly)

* subject 1..
* subject only Reference(Device)
* subject ^comment = "Hier wird das Device referenziert.
Das sollte eine Instanz von *MII PR Kardio Device* sein."
* focus 1..1
* focus only Reference(DeviceMetric)
* focus ^comment = "Hier wird die DeviceMetric referenziert.
Das sollte eine Instanz von *MII PR Kardio Brady Pacing Mode* sein."
* issued ..0
* performer ..0
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept from $geraeteprogrammierung (required)
* interpretation ..0
* bodySite ..0
* method ..0
* specimen ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0 
* component ..0

Instance: mii-exa-kardio-geraeteprogrammierung-vvi
InstanceOf: MII_PR_Kardio_Geraeteprogrammierung
Title: "MII EXA Kardio Geräteprogrammierung VVI"
Description: "Beispiel der Einstellung eines Kardioverter-Defibrillators (ICD) im VVI-Modus"
Usage: #example

* status = #final
* code.coding.system = $mdc
* code.coding.code = #730752
* code.coding.display = "MDC_IDC_SET_BRADY_MODE"
* code.text = "The brady pacing mode according to the NBG standard"
* subject.reference = "Device/mii-exa-kardio-device-icd"
* focus.reference = "DeviceMetric/mii-exa-kardio-brady-pacing-mode"
* effectiveDateTime = "2025-05-14T14:33:12+02:00"
* valueCodeableConcept.coding.system = $mdc
* valueCodeableConcept.coding.code = #754773
* valueCodeableConcept.coding.display = "MDC_IDC_ENUM_BRADY_MODE_VVI"