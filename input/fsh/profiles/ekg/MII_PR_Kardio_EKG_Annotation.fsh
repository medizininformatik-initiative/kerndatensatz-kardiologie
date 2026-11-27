Profile: MII_PR_Kardio_EKG_Annotation
Id: mii-pr-kardio-ekg-annotation
Parent: Observation
Title: "MII PR Kardio EKG Annotation"
Description: "Profil zur Erfassung von Annotationen, z.B. Messergebnisse und Interpretationen, eines EKG."

* insert PR_CS_VS_Version
* insert Publisher

* ^language = #de
* ^status = #draft
* ^experimental = true
* ^date = "2026-11-06"

* obeys mii-inv-kardio-dataabsentreason

* status MS

* category 1.. MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vital-signs 1..1 MS
* category[vital-signs] = $observation-category#vital-signs

* partOf MS
* partOf only Reference(MII_PR_Kardio_EKG_Durchfuehrung)
* partOf ^short = "EKG-Durchführung, aus der die Annotation stammt"

* code MS
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    mdc 1..1 MS and
    sct 0..1 MS
* code.coding[mdc].system = $mdc
* code.coding[mdc] from MII_VS_Kardio_Metriken_EKG_Annotationen_MDC (required)
* code.coding[mdc] ^short = "ISO/IEEE 11073-10101 (MDC) Code der Annotation"
* code.coding[sct].system = $sct
* code.coding[sct] from MII_VS_Kardio_EKG_Annotation_SNOMEDCT (required)
* code.coding[sct] ^short = "Optionaler SNOMED CT Code der Annotation (Observable entity)"

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime or Period or instant

* value[x] MS
* value[x] only Quantity or string
* valueQuantity.value 1.. MS
* valueQuantity.unit MS
* valueQuantity.system 1.. MS
* valueQuantity.system = $ucum
* valueQuantity.code 1.. MS
* valueQuantity ^short = "Messwert mit UCUM-Einheit (z.B. ms, uV, deg, /min)"
* valueString ^short = "Freitext-Annotation bzw. Befundtext (z.B. MDC_ECG_INTERPRETATION)"

* dataAbsentReason MS

* device MS
* device only Reference(MII_PR_Kardio_EKG_Geraet or MII_PR_Kardio_EKG_Kanal)
* device ^short = "EKG-Gerät bzw. -Kanal, auf das/den sich die Annotation bezieht"

* derivedFrom 1.. MS
* derivedFrom ^slicing.discriminator.type = #type
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open

* derivedFrom contains document 1.. MS
* derivedFrom[document] only Reference(MII_PR_Kardio_EKG_Referenz)
* derivedFrom[document] ^short = "Referenz auf die zugrundeliegenden EKG-Daten"
