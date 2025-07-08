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

* type from $ekg-kanaele (required)
* type 1..1 MS

* patient ..0

* parent 1.. MS
* parent only Reference(MII_PR_Kardio_EKG_Geraet)

Instance: mii-exa-kardio-ekg-kanal-i
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal I"
Description: "Beispiel eines EKG-Kanals (I) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding = $mdc#131073 "MDC_ECG_LEAD_I"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"
* property.type = $mdc#666753 "MDC_ECG_CTL_VBL_SAMPLE_RATE"
* property.valueQuantity.value = 1000
* property.valueQuantity.unit = "1 / (second)"
* property.valueQuantity.system = "http://unitsofmeasure.org"
* property.valueQuantity.code = #1/s

Instance: mii-exa-kardio-ekg-kanal-ii
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal II"
Description: "Beispiel eines EKG-Kanals (II) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding = $mdc#131074 "MDC_ECG_LEAD_II"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"

Instance: mii-exa-kardio-ekg-kanal-iii
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal III"
Description: "Beispiel eines EKG-Kanals (III) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding = $mdc#131133 "MDC_ECG_LEAD_III"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"