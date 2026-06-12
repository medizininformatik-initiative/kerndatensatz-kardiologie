Profile: MII_PR_Kardio_Atherosklerotisches_Erstereignis
Id: mii-pr-kardio-atherosklerotisches-erstereignis
Parent: Observation
Title: "MII PR Kardio Atherosklerotisches Erstereignis"
Description: "Profil zur Erfassung des Datum des ersten  atherosklerotischen Ereignisses im Kontext von ACRIBiS."

* insert PR_CS_VS_Version
* insert Publisher

* ^status = #active
* ^experimental = false
* ^date = "2025-09-03"

* code 1..1 MS
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.version 1.. MS
* code.coding.code 1.. MS

* code.coding = $ath-ereignis|2026.0.0-alpha.3#ae "Atherosklerotisches Ereignis"

* subject 1.. MS
* subject only Reference(Patient)

* effective[x] 1.. MS
* effective[x] only dateTime or Period or instant

* value[x] ..0

* component 2..2 MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Zusätzliche Angaben zum Rauchverhalten."
* component contains
    erkrankung 1..1 MS and
    datum 1..1 MS

* component.code MS
* component.code.coding 1..1 MS
* component.code.coding.system 1..1 MS
* component.code.coding.system = $sct

* component[erkrankung] ^comment = "Welches Ereignis war das erste atherosklerotische Ereignis?"
* component[erkrankung].code = $sct#439401001 "Diagnosis"
* component[erkrankung].value[x] only CodeableConcept
* component[erkrankung].valueCodeableConcept from MII_VS_Kardio_Atherosklerotisches_Ereignis_SNOEMDCT (required)

* component[datum] ^comment = "Datum des bezeichneten ersten atherosklerotischen Ereignisses (z.B. Herzinfarkt, Apoplex, pAVK)"
* component[datum].code = $sct#432213005 "Date of diagnosis"
* component[datum].value[x] only dateTime