Instance: mii-exa-kardio-ekg-kanal-ii
InstanceOf: MII_PR_Kardio_EKG_Kanal
Title: "MII EXA Kardio EKG Kanal II"
Description: "Beispiel eines EKG-Kanals (II) eines Gerätes der Firma Mortara Instruments"
Usage: #example

* language = #de-DE
* status = #active
* type.coding[geraetetyp] = $mdc-with-version#69799 "MDC_DEV_ECG_CHAN"
* property[kanalbezeichnung].type = $mdc-with-version#68142 "MDC_ATTR_CHAN_NUM_LOGICAL"
* property[kanalbezeichnung].valueCode = $mdc-with-version#131074 "MDC_ECG_LEAD_II"
* parent = Reference(mii-exa-kardio-ekg-geraet-mortara)