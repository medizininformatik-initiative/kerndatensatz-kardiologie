Profile: MII_PR_Kardio_Brady_Pacing_Mode
Id: mii-pr-kardio-brady-pacing-mode
Parent: DeviceMetric
Title: "MII PR Kardio Brady Pacing Mode"
Description: "Dieses Profil bildet die DeviceMetric \"Brady Pacing Mode\" eines Herzschrittmacher nach dem NBG-Standard ab.
Eine konkrete Programmierung eines Herzschrittmachers wird in einer Observation abgebildet."

* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"
* ^publisher = "Medizininformatik Initative"

* type from $devicemetric-type (required)
* type.coding 1..
* type.coding.system 1..
* type.coding.system = $mdc (exactly)
* type.coding.code 1..
* type.coding.code = #730752 (exactly)

* unit ..0
* source 1..
* parent ..0
* operationalStatus ..0
* color ..0
* category = #setting (exactly)
* measurementPeriod ..0
* calibration ..0

Instance: mii-exa-kardio-brady-pacing-mode
InstanceOf: MII_PR_Kardio_Brady_Pacing_Mode
Title: "MII EXA Kardio Brady Pacing Mode"
Description: "Beispiel einer DeviceMetric für die Geräteprogrammierung eines ICD"
Usage: #example

* type.coding.system = $mdc
* type.coding.code = #730752
* type.coding.display = "MDC_IDC_SET_BRADY_MODE"
* type.text = "The brady pacing mode according to the NBG standard."
* source.reference = "Device/mii-exa-kardio-device-icd"
* category = #setting