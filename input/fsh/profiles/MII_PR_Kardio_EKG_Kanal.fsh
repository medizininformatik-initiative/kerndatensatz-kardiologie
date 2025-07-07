Profile: MII_PR_Kardio_EKG_Kanal
Id: mii-pr-kardio-ekg-kanal
Parent: Device
Title: "MII PR Kardio EKG Kanal"
Description: "Profil zur Abbildung eines EKG-Kanals."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-07"

* status MS

* type from $devicemetric-type (required)
* type 1..1 MS
* type.coding = $mdc#131073

* patient ..0

* parent 1.. MS
* parent only Reference(MII_PR_Kardio_EKG_Geraet)

Instance: mii-exa-kardio-ekg-kanal-i
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal I"
Description: "Beispiel eines EKG Kanals (I) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding = $mdc#131073 "MDC_ECG_LEAD_I"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"