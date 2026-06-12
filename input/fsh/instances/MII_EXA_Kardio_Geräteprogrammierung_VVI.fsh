Instance: mii-exa-kardio-geraeteprogrammierung-vvi
InstanceOf: MII_PR_Kardio_Geraeteprogrammierung
Title: "MII EXA Kardio Geräteprogrammierung VVI"
Description: "Beispiel der Einstellung eines Kardioverter-Defibrillators (ICD) im VVI-Modus"
Usage: #example

* language = #de-DE
* status = #final
* code.coding[mdc] = $example-mdc#730752 "MDC_IDC_SET_BRADY_MODE"
* code.text = "The brady pacing mode according to the NBG standard"
* subject.reference = "Device/mii-exa-kardio-device-icd"
* focus.reference = "DeviceMetric/mii-exa-kardio-nbg-schrittmachermodus"
* effectiveDateTime = "2025-05-14T14:33:12+02:00"
* performer.display = "Beipielarzt"
* valueCodeableConcept = $example-mdc#754773 "MDC_IDC_ENUM_BRADY_MODE_VVI"