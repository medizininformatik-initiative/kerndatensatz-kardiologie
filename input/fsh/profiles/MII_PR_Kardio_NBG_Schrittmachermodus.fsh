Profile: MII_PR_Kardio_NBG_Schrittmachermodus
Id: mii-pr-kardio-nbg-schrittmachermodus
Parent: DeviceMetric
Title: "MII PR Kardio NBG Schrittmachermodus"
Description: "Dieses Profil bildet die Einstellungsmöglichkeit eines Herzschrittmacher nach dem NBG-Standard ab.
Die konkrete Programmierung eines Herzschrittmachers zu einem bestimmmten Zeitpunkt oder in einem Zeitraum wird in einer Observation abgebildet."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = true
* ^date = "2025-05-13"

* type 1.. MS
* type.coding 1.. MS
* type.coding.system 1.. MS
* type.coding.version 1.. MS
* type.coding.code 1.. MS
* type from $devicemetric-type-vs (required)
* type = $mdc#730752 // MDC_IDC_SET_BRADY_MODE


* source 1.. MS

* category MS
* category = #setting