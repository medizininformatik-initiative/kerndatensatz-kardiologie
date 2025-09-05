Instance: mii-exa-kardio-ekg-rr-interval
InstanceOf: MII_PR_Kardio_EKG_Annotation
Title: "MII EXA Kardio EKG RR Interval"
Description: "Beispiel einer Observation zur Darstellung des RR Intervals eines aufgezeichneten EKGs"
Usage: #example

* status = #final
* category[vital-signs] = $observation-category#vital-signs "Vital Signs"
* code = $mdc#147240 "MDC_ECG_TIME_PD_RR_GL"
* subject.display = "Beispielpatient"
* effectivePeriod.start = "2023-05-03T07:38:07Z"
* effectivePeriod.end = "2023-05-03T07:38:17Z"
* performer.display = "Kardiologe"
* valueQuantity.value = 1000
* valueQuantity.unit = "millisecond"
* valueQuantity.system = $ucum
* valueQuantity.code = #ms
* device.reference = "Device/mii-exa-kardio-ekg-geraet-mortara"
* derivedFrom.reference = "DocumentReference/mii-exa-kardio-ekg-referenz"