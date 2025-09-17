Profile: MII_PR_Kardio_EKG_Annotation
Id: mii-pr-kardio-ekg-annotation
Parent: Observation
Title: "MII PR Kardio EKG Annotation"
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

// Referenz auf noch anzulegende EKG Procedure