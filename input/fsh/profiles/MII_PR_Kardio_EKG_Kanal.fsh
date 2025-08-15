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

* type 1.. MS
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding contains geraetetyp 1..1 MS
* type.coding[geraetetyp] from MII_VS_Kardio_Objekte_Geraete_MDC (required)
* type.coding[geraetetyp] = $mdc#69799

* property 1.. MS
* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open

* property contains kanalbezeichnung 1..1 MS

* property[kanalbezeichnung].type MS
* property[kanalbezeichnung].type from MII_VS_Kardio_Objekte_Geraete_MDC (required)
* property[kanalbezeichnung].type = $mdc#68142
* property[kanalbezeichnung].type ^short = "Attribute \"Logical-Channel-No\" der Kanal-Klasse in ISO 11073"
* property[kanalbezeichnung].type ^definition = "Code 68142 (1::2606) MDC_ATTR_CHAN_NUM_LOGICAL ist das Attribut \"Logical-Channel-No\" der Kanal-Klasse in ISO 11073"

* property[kanalbezeichnung].valueQuantity ..0

* property[kanalbezeichnung].valueCode 1..1 MS
* property[kanalbezeichnung].valueCode from MII_VS_Kardio_EKG_Kanaele_MDC (required)

* parent 1.. MS
* parent only Reference(MII_PR_Kardio_EKG_Geraet)

Instance: mii-exa-kardio-ekg-kanal-i
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal I"
Description: "Beispiel eines EKG-Kanals (I) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding[geraetetyp] = $mdc#69799 "MDC_DEV_ECG_CHAN"
* property[kanalbezeichnung].type = $mdc#68142 "MDC_ATTR_CHAN_NUM_LOGICAL"
* property[kanalbezeichnung].valueCode = $mdc#131073 "MDC_ECG_LEAD_I"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"

Instance: mii-exa-kardio-ekg-kanal-ii
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal II"
Description: "Beispiel eines EKG-Kanals (II) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding[geraetetyp] = $mdc#69799 "MDC_DEV_ECG_CHAN"
* property[kanalbezeichnung].type = $mdc#68142 "MDC_ATTR_CHAN_NUM_LOGICAL"
* property[kanalbezeichnung].valueCode = $mdc#131074 "MDC_ECG_LEAD_II"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"

Instance: mii-exa-kardio-ekg-kanal-iii
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal III"
Description: "Beispiel eines EKG-Kanals (III) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* status = #active
* type.coding[geraetetyp] = $mdc#69799 "MDC_DEV_ECG_CHAN"
* property[kanalbezeichnung].type = $mdc#68142 "MDC_ATTR_CHAN_NUM_LOGICAL"
* property[kanalbezeichnung].valueCode = $mdc#131133 "MDC_ECG_LEAD_III"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"