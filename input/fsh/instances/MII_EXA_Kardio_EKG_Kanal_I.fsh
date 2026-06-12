Instance: mii-exa-kardio-ekg-kanal-i
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal I"
Description: "Beispiel eines EKG-Kanals (I) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* language = #de-DE
* status = #active
* type.coding[geraetetyp] = $example-mdc#69799 "MDC_DEV_ECG_CHAN"
* property[kanalbezeichnung].type = $example-mdc#68142 "MDC_ATTR_CHAN_NUM_LOGICAL"
* property[kanalbezeichnung].valueCode = $example-mdc#131073 "MDC_ECG_LEAD_I"
* parent.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"