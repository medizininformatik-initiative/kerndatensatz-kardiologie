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