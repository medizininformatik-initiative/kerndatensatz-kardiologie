Profile: MII_PR_Kardio_Geraeteprogrammierung
Id: mii-pr-kardio-geraeteprogrammierung
Parent: Observation
Title: "MII PR Kardio Geräteprogrammierung"
Description: "Mit dieser Observation kann die Geräteprogrammierung, d.h. die DeviceMetric *Schrittmachermodus*, eines Gerätes zu einem bestimmten Zeitpunkt abgebildet werden."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"

* code from $devicemetric-type (required)
* code MS
* code.coding 1.. MS
* code.coding = $mdc#730752
* code.coding.system 1.. MS
* code.coding.code 1.. MS

* subject 1.. MS
* subject only Reference(Device)
* subject ^comment = "Hier wird das Device referenziert.
Das sollte eine Instanz von *MII PR Kardio Device* sein."

* focus MS
* focus only Reference(DeviceMetric)
* focus ^comment = "Hier wird die DeviceMetric referenziert.
Das sollte eine Instanz von *MII PR NBG Schrittmachermodus* sein."

* effective[x] 1.. MS

* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept from $geraeteprogrammierung (required)

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
* performer.reference = "Practitioner/example-practitioner"
* valueCodeableConcept.coding.system = $mdc
* valueCodeableConcept.coding.code = #754773
* valueCodeableConcept.coding.display = "MDC_IDC_ENUM_BRADY_MODE_VVI"