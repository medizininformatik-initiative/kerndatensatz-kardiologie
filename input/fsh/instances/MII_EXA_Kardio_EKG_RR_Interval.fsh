Instance: mii-exa-kardio-ekg-rr-interval
InstanceOf: MII_PR_Kardio_EKG_Annotation
Title: "MII EXA Kardio EKG RR Interval"
Description: "Beispiel einer Observation zur Darstellung des RR Intervals eines aufgezeichneten EKGs"
Usage: #example

* language = #de-DE
* contained[0] = Beispielpatient
* status = #final
* category[vital-signs] = $observation-category-with-version#vital-signs "Vital Signs"
* code = $mdc-with-version#147240 "MDC_ECG_TIME_PD_RR_GL"
* subject = Reference(Beispielpatient)
* effectivePeriod.start = "2023-05-03T07:38:07Z"
* effectivePeriod.end = "2023-05-03T07:38:17Z"
* performer.display = "Kardiologe"
* valueQuantity = 1000 'ms' "millisecond"
* device = Reference(mii-exa-kardio-ekg-geraet-mortara)
* derivedFrom = Reference(mii-exa-kardio-ekg-referenz)