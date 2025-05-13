Profile: MII_PR_Kardio_Brady_Pacing_Mode
Id: mii-pr-kardio-brady-pacing-mode
Parent: DeviceMetric
Title: "MII PR Kardio Brady Pacing Mode"
Description: "Dieses Profil bildet die DeviceMetric \"Brady Pacing Mode\" eines Herzschrittmacher nach dem NBG-Standard ab.
Eine konkrete Programmierung eines Herzschrittmachers wird in einer Observation abgebildet."

* type from $devicemetric-type (required)
* type.coding 1..
* type.coding.system 1..
* type.coding.system = $devicemetric-type (exactly)
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