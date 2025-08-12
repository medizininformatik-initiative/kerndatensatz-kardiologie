Profile: MII_PR_Kardio_EKG_Annotationen
Id: mii-pr-kardio-ekg-annotationen
Parent: Observation
Title: "MII PR Kardio EKG Annotationen"
Description: "Profil zur Erfassung von Annotationen, z.B. Messergebnisse und Interpretationen, eines EKG."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #draft
* ^experimental = true
* ^date = "2025-07-30"

* status MS

* category 1.. MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vital-signs 1..1 MS
* category[vital-signs] = $observation-category#vital-signs

* code from MII_VS_Kardio_Metriken_EKG_Annotationen_MDC (required)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime or Period or instant

* device only Reference(Device)

* derivedFrom 1.. MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "$this"
* derivedFrom ^slicing.rules = #open

* derivedFrom contains document 1.. MS
* derivedFrom[document] only Reference(DocumentReference)

Instance: mii-exa-kardio-ekg-rr-interval
InstanceOf: MII_PR_Kardio_EKG_Annotationen
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

// Sollte SR überhaupt abgebildet werden? Vor allem sind Annotationen und abgeleitete Werte interessant.

// Referenz auf noch anzulegende EKG Procedure