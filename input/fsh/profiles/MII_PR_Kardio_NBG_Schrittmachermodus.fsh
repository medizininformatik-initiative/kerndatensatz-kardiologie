Profile: MII_PR_Kardio_NBG_Schrittmachermodus
Id: mii-pr-kardio-nbg-schrittmachermodus
Parent: DeviceMetric
Title: "MII PR Kardio NBG Schrittmachermodus"
Description: "Dieses Profil bildet die Einstellungsmöglichkeit eines Herzschrittmacher nach dem NBG-Standard ab.
Die konkrete Programmierung eines Herzschrittmachers zu einem bestimmmten Zeitpunkt oder in einem Zeitraum wird in einer Observation abgebildet."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-05-13"

* type from $devicemetric-type (required)
* type.coding 1.. MS
* type.coding = $mdc#730752
* type.coding.system 1.. MS
* type.coding.code 1.. MS

* source 1.. MS

* category MS
* category = #setting

Instance: mii-exa-kardio-nbg-schrittmachermodus
InstanceOf: MII_PR_Kardio_NBG_Schrittmachermodus
Title: "MII EXA Kardio NBG Schrittmachermodus"
Description: "Beispiel einer DeviceMetric für die Geräteprogrammierung eines ICD"
Usage: #example

* type.coding.system = $mdc
* type.coding.code = #730752
* type.coding.display = "MDC_IDC_SET_BRADY_MODE"
* type.text = "The brady pacing mode according to the NBG standard."
* source.reference = "Device/mii-exa-kardio-device-icd"
* category = #setting